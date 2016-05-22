require 'rspec'
require 'capybara'
require 'capybara/dsl'

RSpec.configure do |config|
  config.include Capybara::DSL
end

# Debugging in Chrome is much easier
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.app_host = 'http://pendragonchainmail.com'
