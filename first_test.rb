require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox

browser.get 'http://demo.redmine.org'

browser.find_element(:class, 'register').click
browser.find_element(:id, 'user_login').send_keys 'Flower'
browser.find_element(:id, 'user_password').send_keys 'Qwerty123'
browser.find_element(:id, 'user_password_confirmation').send_keys 'Qwerty123'
browser.find_element(:id, 'user_firstname').send_keys 'Alex'
browser.find_element(:id, 'user_lastname').send_keys 'Tulip'
browser.find_element(:id, 'user_mail').send_keys 'atulip@dfdfd.dfd'

browser.find_element(:name, 'commit').click


