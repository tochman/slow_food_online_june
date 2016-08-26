Given(/^I only fill in the optional fields$/) do
  steps %q{
  And I fill "Allergy info" with "Peanuts"
  And I fill "Ingredients" with "Mince"
  And I fill "Calories" with "429"
  }
end
