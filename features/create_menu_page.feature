Feature: Menu create page

  Scenario: Create menu page
    # Given I am logged in as System user
    Given I am on the "Create menu" page
    Then I should see "Create your custom menu!"
    And I should see the input field "Name"
    And I should see the "Continue" button
