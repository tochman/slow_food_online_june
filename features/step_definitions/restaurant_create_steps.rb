Given(/^I am on the restaurant input details page$/) do
  visit restaurant_create_path
end

Then(/^I should see the field "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see all the fields$/) do
  steps %q{
   Then I should see the field "Restaurant name"
   Then I should see the field "Restaurant address"
   Then I should see the field "Zip code"
   Then I should see the field "Max delivery radius"
   Then I should see the field "Public phone number"
   Then I should see the field "Owner name"
   Then I should see the field "Owner address"
   Then I should see the field "Private phone number"
   Then I should see the field "Email address"
   Then I should see the field "Restaurant description"
   Then I should see the field "Cuisine"
 }
end

When(/^I click "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I am redirected to the "([^"]*)" page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
