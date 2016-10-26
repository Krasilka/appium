require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'
require 'page-object'
require_relative 'screens/modules/data_helper'

class AppiumWorld
end

caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

World DataHelper
