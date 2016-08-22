Given(/^I click "([^"]*)"$/) do |link|
  click_link_or_button link
end

Then(/^I should be on the "([^"]*)" page$/) do |path|
  expect(page.current_path).to eq expected_page(path)
end

Given(/^I click on "([^"]*)"$/) do |button|
  click_link_or_button button
end

Given(/^there is a user with email "([^"]*)"$/) do |email|
  FactoryGirl.create(:user, email: email)
end

private

def expected_page(path)
  case path
    when "home"
      root_path
    when "signup"
      new_user_registration_path
  end
end
