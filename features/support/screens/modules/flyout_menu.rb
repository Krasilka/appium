module FlyoutMenu
  include PageObject

  button(:statistics_menu, xpath: "//android.widget.CheckedTextView[@text='Statistics']")
  button(:menu_button, xpath: "//android.widget.ImageButton[contains(@content-desc,'Open navigation drawer')]")

  def go_to_statistics
    menu_button
    statistics_menu
  end

end