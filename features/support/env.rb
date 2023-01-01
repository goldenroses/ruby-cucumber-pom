require 'rubygems'
require "watir"

Before do |scenario|
  # uncomment this block to execute a cloud grid test run on lambda test
  # username = "${LAMBDATEST_USERNAME}"
  # accessToken = "${LAMBDATEST_ACCESS_KEY}"
  # gridUrl = "hub.lambdatest.com/wd/hub"
  #
  # options = Selenium::WebDriver::Options.chrome
  # options.browser_version = 'latest'
  # options.platform_name = 'Windows 10'
  # cloud_options = {}
  # cloud_options[:build] = "Cucumber POM tests"
  # cloud_options[:name] = "Ruby Cucumber POM tests"
  # options.add_option('LT:Options', cloud_options)
  # url = "https://" + username + ":" + accessToken + "@" + gridUrl
  #
  # $browser = Watir::Browser.new(:chrome ,options: options ,url: url)

  # Local execution.
  $browser = Watir::Browser.new :firefox
  $browser.driver.manage.window.maximize
end

After do |scenario|
  $browser.close
end
