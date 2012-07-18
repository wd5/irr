# encoding: utf-8

Допустим %{на странице категории присутствует секция "$section"} do |section|
  on @category_page do |page|
    if section == "Быстрый поиск"
      page.has_seo_link_section?.should eq(true), 
        "Отсутствует секция 'Быстрый поиск'"
    else
      page.has_tag_cloud_with_name?(section).should eq(true), 
        "Отсутствует секция '#{section}'"
    end
  end
end

Когда %{я выбираю ссылку "$seo_link" в секции "Быстрый поиск"} do |link_text|
  on @category_page do |page|
    page.select_link_with_text_from_quick_search_section(link_text)
  end
end

Когда /^для каждой ссылки в секции "(.*?)" я выполняю следующие шаги:$/ do |section, other_steps|
  popular_marks_soft_assert("Ошибка проверки секции '#{section}'", section) do |result|
    @link_text = result[0]
    @link_url = result[1]
    steps other_steps
  end
end

def popular_marks_soft_assert(description, section)
  validation_errors = Hash.new
  on AdDetailsPage do |page|
    page.get_links_from_section(section).each do |result|
      begin
        @browser.goto(result[1])
        yield result
      rescue Exception => verification_error
        debugger
        validation_errors[result[1]] = verification_error.message
      end
    end
  end

  if !validation_errors.empty?
    output_html_formatted_messages(validation_errors)
    raise "#{description}"
  end
end

То %{открыта не страница 404} do
  @browser.url.should_not include("404"), "Ошибка 404 при переходе по сео-линку"
end

То %{ссылка содержит "$part"} do |part|
  steps %Q{* открыта не страница 404}
  @browser.url.should include part
end

То %{в поле "$field" выбраны следующие значения:} do |field, table|
  on @category_page do |page|
    table.hashes.each do |hash|
      page.get_selected_parameter(field, hash).should eq(true), 
        "Выбрано некорректное значение"
    end
    
    # TODO: Проверям, что другие значения не выбраны   
  end
end

То %{значение в поле "$field" равно "$expected"} do |field, expected|
  on @category_page do |page|
    page.get_selected_parameter(field).strip.should == expected
  end
end

Допустим %{значение в поле "$field" равно от $min} do |field, min|
  on @category_page do |page|
    page.get_selected_parameter(field)['min'].should == min
  end
end

Допустим %{значение в поле "$field" равно до $max} do |field, max|
  on @category_page do |page|
    page.get_selected_parameter(field)['max'].should == max
  end
end

Допустим %{значение в поле "$field" равно от $min до $max} do |field, min, max|
  steps %Q{* значение в поле "#{field}" равно от #{min}}
  steps %Q{* значение в поле "#{field}" равно до #{max}}
end

Допустим %{в поле "$field" выбрано значение, равное тексту ссылки} do |field|
  on @category_page do |page|
    page.get_selected_parameter(field, @link_text).should eq(true)
  end
end
