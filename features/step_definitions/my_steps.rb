Given(/^I am not logged in$/) do
  on(MyAccountPage).logout
end

When(/^I submit valid credential$/) do
  visit(LoginPage).login_as(@user)
end

Then(/^I am logged in$/) do
  expect(on(HomePage)).to be_logged_in_as(@user)
end

Given(/^I have registered to the system$/) do
  @user=visit(RegistrationPage).register
end