Then(/^Show me the page$/) do
  save_and_open_page
end

Then(/^I should see the field "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see all the fields$/) do
  steps %q{
   Then I should see the field "Restaurant name"
   Then I should see the field "Restaurant address"
   Then I should see the field "Zip code"
   Then I should see the field "Delivery radius"
   Then I should see the field "Public phone number"
   Then I should see the field "Owner name"
   Then I should see the field "Owner address"
   Then I should see the field "Private phone number"
   Then I should see the field "Email address"
   Then I should see the field "Restaurant description"
   Then I should see the field "Select your Cuisine"
 }
end

Then(/^I should see a "([^"]*)" button$/) do |button|
  expect(page).to have_button button
end

Then(/^I will fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

Then(/^I click on the "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^the "([^"]*)" drop\-down should contain the option "([^"]*)"$/) do |id, value|
  find('#Delivery_radius_id').click
  select('', from: 'Delivery_radius_id' )
end
