require 'page-object'

class StatisticsScreen
  include PageObject

  div(:number_of_shows, id: 'textViewStatsShows')
  div(:number_of_watched, id: 'textViewStatsEpisodesWatched')

  def get_number_of_shows
    # $driver.find_element(id: 'textViewStatsShows').text
    number_of_shows_element.text
  end

  def get_watched_episodes
    # $driver.find_element(id: 'textViewStatsEpisodesWatched').text
    number_of_watched_element.text
  end

end