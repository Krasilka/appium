When /^I watch first episode of the show$/ do
  on(MainScreen).open_show(@show)
  on(OverviewScreen).set_watched_episode
  $driver.back
end