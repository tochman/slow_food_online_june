Given(/^I am on the "([^"]*)" page$/) do |path|
  case path
    when 'home' then
      visit root_path
    when 'create menu' then
      visit new_menu_path
  end
end

Then(/^I should see a "([^"]*)" link$/) do |link|
  click_link_or_button link
end
