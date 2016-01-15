
require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox

browser.get 'http://demo.redmine.org'

browser.find_element(:class, 'logout').click