# encoding: utf-8

class CategoryCarsPartsDisksPage < AdDetailsPage
  include PageObject
  div :offertype, :xpath => "//div[@data-item-name='offertype']"
  div :condition_c, :xpath => "//div[@data-item-name='condition_c']"
  div :cartype, :xpath => "//div[@data-item-name='cartype']"
  div :seasonality, :xpath => "//div[@data-item-name='seasonality']"
  div :producer, :xpath => "//div[@data-item-name='producer']"
  div :diameter, :xpath => "//div[@data-item-name='diameter']"
  div :profile_width, :xpath => "//div[@data-item-name='profile_width']"
  div :profile_height, :xpath => "//div[@data-item-name='profile_height']"

  def set_parameter (hash)
    case hash['parameter']

    when "Цена"
      self.price_from = hash['min']
      self.price_to = hash['max']

    when "Валюта"
      singleselect(self.currency_element, hash['value'])

    when "Тип предложения"
      multiselect(self.offertype_element, hash['value'])

    when "Состояние"
      multiselect(self.condition_c_element, hash['value'])
      
    when "Тип автомобиля"
      multiselect(self.cartype_element, hash['value'])
      
    when "Сезонность"
      multiselect(self.seasonality_element, hash['value'])
      
    when "Производитель"
      multiselect(self.producer_element, hash['value'])
      
    when "Диаметр"
      multiselect(self.diameter_element, hash['value'])
      
    when "Ширина профиля"
      multiselect(self.profile_width_element, hash['value'])
      
    when "Высота профиля"
      multiselect(self.profile_height_element, hash['value'])
      
    when "С фото"
      self.hasimages_element.click
      
    when "С видео"
      self.hasvideo_element.click
      
    when "Источник"
      singleselect(self.source_from_element, hash['value'])  
      
    when "Поданные"
      singleselect(self.date_create_element, hash['value'])
      
    else
      raise "Неизвестный параметр: #{hash['parameter']}"
    end
  end
  
  def get_parameter (field)
    case field
    when "Год выпуска"
      result = get_value_parameter(field)
    when "Пробег"
      # Пробег вводиться в тыс. км, отображается в км.
      # Делим отображаемый результат на 1000 
      result = get_value_parameter(field).to_i / 1000
    when "Марка", "Модель", "Тип кузова", "Тип трансмиссии"
      result = get_unique_parameter(field)
    else
      result = get_generic_parameter(field) 
    end
    result
  end
end