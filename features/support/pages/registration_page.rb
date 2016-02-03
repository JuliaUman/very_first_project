class RegistrationPage
  include PageObject
  page_url "http://demo.redmine.org/account/register"

  text_field :login, id: 'user_login'
  text_field :password, id: 'user_password'
  text_field :confirmation, id: 'user_password_confirmation'
  text_field :first_name, id: 'user_firstname'
  text_field :last_name, id: 'user_lastname'
  text_field :email, id: 'user_mail'
# text_field :language, id: 'user_language'
  button :submit, name: 'commit'


  def register
    login_element.when_visible(30)
    login = rand(999).to_s + 'login'
    self.login = login
    self.password='Qwerty123'
    self.confirmation='Qwerty123'
    self.first_name='Julia'
    self.last_name='Nerg'
    self.email = login + '@dfdfd.dfd'
    # self.language='English'

    submit
    login
  end
end


