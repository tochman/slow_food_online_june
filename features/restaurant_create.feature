Feature: As a System user
  In order to get clients
  I want to be able to add my restaurant's information

  Scenario: Viewing restaurant create page
    Given I am on the "restaurant create" page
    Then Show me the page
    Then I should see an element "#details"
    And I should see all the fields
    And I should see a "Save" button

  Scenario: Restaurant create page fields not filled in
    Given I am on the "restaurant create" page
    Then I should see an element "#details"
    And I will fill in "Restaurant name" with " "
    And I will fill in "Restaurant address" with " "
    And I will fill in "Zip code" with " "
    Then the "Delivery radius" drop-down should contain the option " "
    And I will fill in "Public phone number" with " "
    And I will fill in "Owner name" with " "
    And I will fill in "Owner address" with " "
    And I will fill in "Private phone number" with " "
    And I will fill in "Email address" with " "
    And I will fill in "Restaurant description" with " "
    Then the "Cuisine" drop-down should contain the option " "
    And I click on the "Save" button
