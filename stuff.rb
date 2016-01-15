
require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox

browser.get 'http://demo.redmine.org'
browser.find_element(:class, 'login').click
browser.find_element(:id, 'username').send_keys 'Julia'
browser.find_element(:id, 'password').send_keys 'Qwerty123'

browser.find_element(:name, 'login').click

browser.find_element(:class, 'my-account').click
browser.find_element(:xpath, '//*[@id="content"]/div[1]/a[2]').click
browser.find_element(:id, 'password').send_keys 'Qwerty123'
browser.find_element(:id, 'new_password').send_keys 'Qwerty1234'
browser.find_element(:id, 'new_password_confirmation').send_keys 'Qwerty1234'

browser.find_element(:name, 'commit').click
