Given /^I prepare application for use$/ do
  on(MainScreen).dismiss_language_setup
end

When /^I add show (.+)$/ do |show|
  on(MainScreen).click_add_show_from_float
  @show = show
  on(SearchScreen).search_for(@show)
  on(SearchScreen).open_found_show(@show)
  on(SearchScreen).add_show_from_dialog
  $driver.back
end

Then /^on main screen I should see added show$/ do
  expect(on(MainScreen).get_show_name).to eql(@show)
end

Then /^on main screen I should see second episode$/ do
  expect(on(MainScreen).get_the_name_of_next_episode).to eql(data_yml_hash['second_episode'])
end


