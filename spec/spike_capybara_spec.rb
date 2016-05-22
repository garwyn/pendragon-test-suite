require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'spec_helper.rb'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.pendragonchainmail.com'

describe 'The website' do
  it 'should exist' do
    visit ''
  end
end