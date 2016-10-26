require 'page-object'
require_relative '../screens/modules/dialog_menu'

class SearchScreen
  include PageObject
  include Dialog

  text_field(:search_content, class_name: 'android.widget.EditText')

  def search_for(show)
    search_content_element.clear
    search_content_element.send_keys(show)
    $driver.press_keycode 66
  end

  def open_found_show(show)
    $driver.text_exact(show).click
    sleep 5
  end

end