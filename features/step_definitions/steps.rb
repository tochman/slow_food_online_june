Given(/^I am on the "([^"]*)" page$/) do |pagename|
  visit path(pagename)
end

def path(pagename)
  case pagename
    when "restaurant create"
      restaurant_create_path
    when "home"
      root_path
  end
end
