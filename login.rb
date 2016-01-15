require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox

browser.get 'http://demo.redmine.org'

browser.find_element(:class, 'login').click
browser.find_element(:id, 'username').send_keys 'Julia'
browser.find_element(:id, 'password').send_keys 'qwertyuiop'

browser.find_element(:name, 'login').click

browser.find_element(:class, 'logout').click