require 'page-object'

class OverviewScreen
  include PageObject

  button(:set_watched, id: 'Set watched')

  def set_watched_episode
    set_watched
  end

end