Feature: As a system user
  So that I can fill my menu with dishes
  I want to be able to create dishes

  Scenario: Creates a dish
    Given I am on the "create dish" page
    And I fill "Name" with "Dish Name"
    And I fill "Price" with "3.00"
    And I fill "Allergy info" with "Peanuts"
    And I fill "Ingredients" with "Mince"
    And I fill "Calories" with "429"
    And I click "Create"
    Then I should be on the "home" page
