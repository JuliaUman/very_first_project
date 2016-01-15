

@browser.get 'http://demo.redmine.org/projects/test2/settings/members'

@browser.find_element(:class, 'login').click
@browser.find_element(:id, 'username').send_keys 'Julia'
@browser.find_element(:id, 'password').send_keys 'qwertyuiop'

@browser.find_element(:name, 'login').click

@browser.get 'http://demo.redmine.org/projects/test2/settings/members'

@browser.find_element(:xpath, '//*[@id="tab-content-members"]/p/a').click
@browser.find_element(:id, 'principals').send_keys 'abc abc'