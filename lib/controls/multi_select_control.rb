module PageObject

  module Accessors

    def irr_multi_select(nice_name, identifier)
      function_name = identifier.gsub(/-/,'_') # replace dashes with underscores
  
      # getter
      define_method("#{function_name}") do
        self.show_all_parameters
        xpath = "//table[@id='allParams']/tbody/tr[./th/span[text()='#{nice_name}']]/td"
        self.cell_element(:xpath => xpath).when_present.text
      end
      
      # setter
      define_method("#{function_name}=") do |hash|
        self.expand_all_parameters
        element = self.div_element(:xpath => "//div[@data-item-name='#{identifier}']")
        element.div_element(:class => "controlSelect").when_present.click
        hash['value'].split(", ").each do |value|
          element.label_element(:text => value).when_present.checkbox_element.check
        end
        element.div_element(:class => "controlSelect").when_present.click 
      end

      add_getters_and_setters(function_name, nice_name)
    end
  end
end