require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox

browser.get 'http://demo.redmine.org'

browser.find_element(:class, 'login').click
browser.find_element(:id, 'username').send_keys 'Julia'
browser.find_element(:id, 'password').send_keys 'qwerty123'

browser.find_element(:name, 'login').click

browser.find_element(:class, 'projects').click
browser.find_element(:xpath, '//*[@id="content"]/div[1]/a[1]').click
browser.find_element(:id, 'project_name').send_keys 'testing2'
browser.find_element(:id, 'project_description').send_keys 'testing different'
browser.find_element(:id, 'project_parent_id').click