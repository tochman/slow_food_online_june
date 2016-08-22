Given(/^I am on the "([^"]*)" page$/) do |pagename|
  visit path(pagename)
end

Then(/^show me the page$/) do
  save_and_open_page
end

Given(/^I navigate to the "([^"]*)" page$/) do |pagename|
  visit path(pagename)
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

private

def path(pagename)
  case pagename
    when "home"
      root_path
    when "restaurants"
      new_restaurant_path
    when "signup"
      new_user_registration_path
  end
end
