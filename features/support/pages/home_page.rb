
class HomePage
  include PageObject
page_url 'http://demo.redmine.org/my/page'
link :current_user, css: '#loggedas a'

  def logged_in_as?(login)
    current_user_element.when_visible
    current_user_element.text == login
  end
end