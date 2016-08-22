Then(/^I should see the input field "([^"]*)"$/) do |field|
  expect(page).to find_field field
end

Then(/^I should see the "([^"]*)" button$/) do |button|
  expect(page).to have_link_or_button button
end