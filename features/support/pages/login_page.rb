class LoginPage
  include PageObject
  page_url 'http://demo.redmine.org/login'
  text_field :login, id: 'username'
  text_field :password, id: 'password'
  button :submit, name: 'login'


  def login_as(login)
    login_element.when_visible(10)
    self.login = login
    self.password='Qwerty123'
    submit
  end

end
