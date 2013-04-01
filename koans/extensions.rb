require 'watir-webdriver'

module Watir
  class Button < HTMLElement

    alias :old_button_click :click

    def click
      Watir::Wait.until { visible?}
      old_button_click
      Watirmark::Session.instance.check_for_post_errors
    end
  end
end