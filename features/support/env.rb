require 'selenium-webdriver'
require 'page-object'
require 'rspec'
World(PageObject::PageFactory)
World(RSpec::Matchers)
