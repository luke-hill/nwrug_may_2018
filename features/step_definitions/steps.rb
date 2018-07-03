Given('I am on the Google Homepage') do
  visit('/')
end

When('I search for Apples') do
  @app.home.search_field.send_keys('Apples')
  @app.home.search_field.send_keys(:enter)
end

Then('I should see a page of results') do
  expect(@app.results).to have_links(minimum: 4)
end

Then('the first result should contain a link to the Apple uk website') do
  expect(@app.results.links.first.text).to include('https://www.apple.com/uk/')
end
