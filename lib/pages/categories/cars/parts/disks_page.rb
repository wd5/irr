# encoding: utf-8

class CategoryCarsPartsDisksPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/cars/parts/disks"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "condition_c"
  irr_multi_select "Тип дисков", "diskstype"
  irr_multi_select "Производитель", "producerdisks"
  irr_multi_select "Диаметр обода", "diameter_obod"
  irr_multi_select "Ширина обода", "width_disks"
  irr_multi_select "Число болтов", "bolt"
  irr_multi_select "Расстояние между болтами (PCD)", "pcd", "PCD"
  irr_multi_select "Вылет (ET)", "et" , "ET"

  def get_parameter (field)
    case field
    when "Диаметр обода", "Ширина обода"
      # Вырезаем дюймы
      return self.send("#{@@getter_functions[field]}").gsub(/ "/, '')

    when "Вылет (ET)", "Расстояние между болтами (PCD)"
      # Вырезаем миллиметры
      return self.send("#{@@getter_functions[field]}").gsub(/ мм/, '')

    else
      super(field)
    end
  end
end
