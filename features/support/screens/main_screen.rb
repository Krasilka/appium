require 'page-object'
require_relative 'modules/flyout_menu'

class MainScreen
 include PageObject
 include FlyoutMenu

 button(:add_show_float, id:'Add show')
 button(:dismiss, id: 'Dismiss')
 div(:show_name, id: 'seriesname')
 div(:next_episode, id:'TextViewShowListNextEpisode')

  def click_add_show_from_float
    add_show_float
  end

  def open_show(show)
    $driver.text_exact(show).click
  end

  def dismiss_language_setup(language='english')
    dismiss
  end

  def get_show_name
    show_name_element.text
  end

  def get_the_name_of_next_episode
    next_episode_element.text
  end

end
