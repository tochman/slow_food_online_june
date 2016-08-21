Feature: As a System user
  In order to get clients
  I want to be able to add my restaurant's information

  Scenario: Viewing restaurant input details page
    Given I am on the restaurant input details page
    Then I should see an element "#details"
    And I should see all the fields
    Then I should see an element "#cousines"
    When I click "Save" button
    Then I am redirected to the "dashboard" page
