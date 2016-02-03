Given(/^Open the registration Page$/) do
  visit(RegistrationPage)
end

When(/^I submit valid credentials$/) do
  on(RegistrationPage).register
end


Then(/^I am registered to the system$/) do
  expect(on(MyAccountPage)).to be_registered
end