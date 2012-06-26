# encoding: utf-8
Когда %{открыт список объявлений пользователя} do
  on MyAdvertsPage do |page|
    page.wait_for_ads_loaded
  end
end

Когда %{объявление с названием "$title" присутствует в списке} do |title|
  on MyAdvertsPage do |page|
    @ad_index = page.get_ad_with_title(title)
    @ad_index.should > 0
  end
end

То %{у объявления указан регион "$region"} do |region|
  on MyAdvertsPage do |page|
    page.get_region(@ad_index).should == region
  end
end

То %{у объявления указан город "$city"} do |city|
  on MyAdvertsPage do |page|
    page.get_city(@ad_index).should == city
  end
end

То %{у объявления указана цена "$price" в $currency} do |price, currency|
  on MyAdvertsPage do |page|
    case currency
    when "рублях"
      page.get_price(@ad_index, "RUR").gsub(/руб./, '').should == price
    when "долларах"
      page.get_price(@ad_index, "USD").gsub(/\$/, '').should == price
    when "евро"
      page.get_price(@ad_index, "EUR").gsub(/€/, '').should == price
    end
  end
end

Допустим %{у объявления отображается загруженная фотография} do
  if BASE_URL.include? 'prontosoft.by'
    puts "Проверка пропущена - тестовый сайт"
    next
  end
  on MyAdvertsPage do |page|
    thumbnail = page.get_photo(@ad_index)
    thumbnail.should_not be_nil
    
    # Verify that  thumbnail url doesn't throw any error
    url = URI.parse(thumbnail)
    the_request = Net::HTTP::Get.new(url.path)
    the_response = Net::HTTP.start(url.host, url.port) { |http| http.request(the_request) }
    the_response.code.should == 200.to_s
  end
end


Когда %{я открываю детали этого объявления} do
  on MyAdvertsPage do |page|
    url = page.get_url_for_ad(@ad_index)
    puts "Открываю объявление <a href=#{url}>#{url}</a>"
    page.open_ad(@ad_index)
  end
end

То %{на вкладке "Все" "$field" $operator "$expected"} do |field, operator, expected|
  on @category_page do |page|
    actual_value = page.get_parameter(field)
    case operator
    when "равно одному из"
      expected.split(', ').should include actual_value
    when "равно"
      begin
        actual_value.to_i.should == expected.to_i
      rescue
        actual_value.should == expected
      end
    when "в границах"
      expected_array = expected.split(" - ")
      actual_value.to_i.should be >= expected_array[0].to_i
      actual_value.to_i.should be <= expected_array[1].to_i
    when "содержит"
      actual_value.should include(expected)
    else
      eval("actual_value.to_i.should be #{operator} expected.to_i")
    end
  end
end

То %{в деталях объявления отображается загруженная фотография} do
  if BASE_URL.include? 'prontosoft.by'
    puts "Проверка пропущена - тестовый сайт"
    next
  end
  on @category_page do |page|
    thumbnail = page.get_photo
    thumbnail.should_not be_nil
    
    # Verify that  thumbnail url doesn't throw any error
    url = URI.parse(thumbnail)
    the_request = Net::HTTP::Get.new(url.path)
    the_response = Net::HTTP.start(url.host, url.port) { |http| http.request(the_request) }
    the_response.code.should == 200.to_s
  end
end

То %{в деталях объявления отображается загруженное видео} do
  on @category_page do |page|
    page.should have_video, "Видео отсутствует"
  end
end

Когда %{я редактирую данное объявление} do
  on MyAdvertsPage do |page|
    page.do_action(@ad_index, "Редактировать")
  end
end

Допустим %{я поднимаю данное объявление} do
  on MyAdvertsPage do |page|
    page.do_action(@ad_index, "Поднять")
  end

  on AdvertActionConfirmPage do |page|
    page.do_activate
  end
end

Допустим %{я выделяю данное объявление} do
  on MyAdvertsPage do |page|
    page.do_action(@ad_index, "Выделить")
  end

  on AdvertActionConfirmPage do |page|
    page.do_activate
  end
end

Допустим %{я делаю данное объявление премиумом} do
  on MyAdvertsPage do |page|
    page.do_action(@ad_index, "Премиум")
  end

  on AdvertActionConfirmPage do |page|
    page.do_activate
  end
end

Допустим %{в ЛК ИП данное объявление выделено} do
  on MyAdvertsPage do |page|
    page.is_ad_highlighted(@ad_index).should == true
  end
end

Допустим %{в ЛК ИП я выбираю регион "$region"} do |region|
  on MyAdvertsPage do |page|
    page.select_region(region)
  end
end

Допустим %{в ЛК ИП я выбираю пакет "$package"} do |package|
  on PackageInfoPage do |page|
    page.select_package(package)
  end
end

Допустим %{в ЛК ИП я запоминаю значение поля "$field"} do |field|
  on PackageInfoPage do |page|
    @stored_var = page.get_field_value(field).to_i
  end
end

То %{в ЛК ИП значение поля "$field" уменьшилось на единицу} do |field|
  on PackageInfoPage do |page|
    new_value = page.get_field_value(field).to_i
    (@stored_var - new_value).should == 1
  end
end

Допустим %{в ЛК ИП я перехожу на вкладку "$tab"} do |tab|
  on MyAdvertsPage do |page|
    page.open_tab(tab)
  end
end

#TODO: Refactor

То %{в ЛК ИП на вкладке "$tab" отображены следующие секции:} do |tab, table|
  case tab
  when "Настройки"
    tab_page = MyAdvertsSettingsTabPage
  when "Статистика"
    tab_page = MyAdvertsViewsTabPage
  when "История"
    tab_page = MyAdvertsHistoryTabPage
  when "Новости"
    tab_page = MyAdvertsNewsTabPage
  when "IP адреса"
    tab_page = MyAdvertsIPAdressesTabPage
  when "Логи импорта"
    tab_page = MyAdvertsLogImportTabPage
  end
  on tab_page do |page|
    table.hashes.each do |hash|
      page.has_section_displayed(hash['имя секции']).should eq(true), 
        "Отсутствует секция #{hash['имя секции']}"
    end
  end
end

То %{в ЛК ИП на вкладке "Платежи" отображен список платежей} do
  on MyAdvertsPaymentsTabPage do |page|
    page.get_payments_number.should > 0
  end
end

То /^в ЛК ИП отсутствует пакет "(.*?)"$/ do |arg1|
  steps %q{* я перехожу в список моих объявлений}
  on MyAdvertsPage do |page|
    page.packages_element.include?(package).should eq(false), 
      "Пакет '#{package}' не был удален"
  end
end

Допустим /^в ЛК ИП значение поля "(.*?)" равно "(.*?)"$/ do |field, expected|
  on PackageInfoPage do |page|
    page.get_field_value(field).should eq(expected)
  end
end

То /^в ЛК ИП присутствует пакет "(.*?)"$/ do |package|
  steps %q{* я перехожу в список моих объявлений}
  on MyAdvertsPage do |page|
    page.packages_element.include?(package).should eq(true), 
      "Пакет '#{package}' не был добавлен"
  end
end
