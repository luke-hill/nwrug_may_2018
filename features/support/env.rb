require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'site_prism'

Capybara.app_host = 'http://www.google.co.uk/'
Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
