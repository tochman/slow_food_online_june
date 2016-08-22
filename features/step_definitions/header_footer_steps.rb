Given(/^I am on the "([^"]*)" page$/) do |path|
  case page
    when 'home' then
      visit root_path
    when 'create menu' then
      visit menu_index_path
  end
end

Then(/^I should see a "([^"]*)" link$/) do |link|
  click_link_or_button link
end
