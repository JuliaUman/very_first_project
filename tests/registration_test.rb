require 'selenium-webdriver'
require 'test/unit'
require 'rspec'

class RegistrationTest < Test::Unit::TestCase
  include RSpec::Matchers

  def test_positive_registration
    go_to_home_page
    login = rand(7894966).to_s + 'login'
    @browser.find_element(:class, 'register').click
    @browser.find_element(:id, 'user_login').send_keys login
    @browser.find_element(:id, 'user_password').send_keys '56789'
    @browser.find_element(:id, 'user_password_confirmation').send_keys '56789'
    @browser.find_element(:id, 'user_firstname').send_keys 'ytf rrrttc trycutc '
    @browser.find_element(:id, 'user_lastname').send_keys 'utf6brrubutc'
    @browser.find_element(:id, 'user_mail').send_keys login + '@aaa.dfd'

    @browser.find_element(:name, 'commit').click

    expected = 'Ваша учётная запись активирована. Вы можете войти.'
    # assert_equal(expected, @browser.find_element(:id, 'flash_notice').text)
    expect(@browser.find_element(:id, 'flash_notice').text).to eq('Ваша учётная запись активирована. Вы можете войти.')
  end

  def go_to_home_page
    @browser.get 'http://demo.redmine.org'
  end

   def teardown
    @browser.quit
  end

end