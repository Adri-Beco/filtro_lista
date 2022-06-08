require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://sites.icasei.com.br/peraelimao/pages/19653828'
    config.default_max_wait_time = 10
end   