# encoding: utf-8

class CategoryCarsServicesEvaluationPage < AdDetailsPage
  include PageObject
  @@getter_functions = Hash.new
  @@setter_functions = Hash.new
  @@url_suffix = "/cars/services/evaluation"
  
  irr_single_select "Тип предложения", "offertype"

  def set_parameter (hash)
    if @@setter_functions.has_key?(hash['parameter'])
      self.send "#{@@setter_functions[hash['parameter']]}", hash
    else
      super(hash)
    end
  end
  
  def get_parameter (field)
    if @@getter_functions.has_key?(field)
      self.send("#{@@getter_functions[field]}")
    else
      get_generic_parameter(field)
    end
  end
end
