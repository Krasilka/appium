require 'page-object'
require 'appium_lib/driver'

module Dialog
  include PageObject

  button(:add_show, id: 'buttonPositive')

  def add_show_from_dialog
    add_show
  end

end