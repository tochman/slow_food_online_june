Given(/^I only fill in the optional fields$/) do
  steps %q{
  And I fill "Allergy info" with "Peanuts"
  And I fill "Ingredients" with "Mince"
  And I fill "Calories" with "429"
  }
end

And(/^I am on the create dish page for menu "([^"]*)"$/) do |name|
  @menu = Menu.find_by(name: name)
  visit new_menu_dish_path(@menu)
end
