Given(/^I can access the home page$/) do
   home_page.visit
end

And(/^I then click sign in$/) do
  home_page.click_sign_in
end

When(/^I put an email$/) do
  sign_in_page.enter_email
end

And(/^I click create an account$/) do
  sign_in_page.click_create_account
end

And(/^input all neccessary registration details$/) do
  create_account.fake_details
end

And(/^once I clicked create account$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be logged in$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
