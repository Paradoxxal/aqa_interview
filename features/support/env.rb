require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec'

# setupCopybara

Capybara.register_driver :firefox_driver do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile, port: 7700)
end
Capybara.default_driver = :firefox_driver
Capybara.current_session.driver.browser.manage.window.resize_to(1920, 1080)
Capybara.default_selector = :xpath

