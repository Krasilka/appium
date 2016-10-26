Then /^on statistics screen I should see show has been counted/ do
  on(MainScreen).go_to_statistics
  expect(on(StatisticsScreen).get_number_of_shows).to eql("1")
end

Then /^on statistics screen I should see watch has been counted/ do
  on(MainScreen).go_to_statistics
  expect(on(StatisticsScreen).get_watched_episodes).to eql("1 WATCHED")
end

