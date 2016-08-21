Given(/^I am on the restaurant input details page$/) do
  visit restaurant_create_path
end

Then(/^I should see all the fields$/) do
  steps %q{
   Then I should see the field "Full Name"
   Then I should see the field "Phone Number"
   Then I should see the field "Street"
   Then I should see the field "City"
   Then I should see the field "Zip Code"
   Then I should see the field "Cardholder"
   Then I should see the field "Card Number"
   Then I should see the field "Expiration Date"
   Then I should see the field "CVC"
 }
end

When(/^I click "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I am redirected to the "([^"]*)" page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
