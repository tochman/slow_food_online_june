Feature: As a system user
  So that I can manage my restaurant
  I want to be able to access a restaurant dashboard

  Background:
    # Given I am on the "dashboard" page
    Given I am logged in as a user of the system
    And I have a restaurant called "Mikey's"
    
  Scenario: Access the dashboard
    Given I am on the "home" page
    And I click "Dashboard"
    Then I should be on the "dashboard" page
    # And I click 'Create a menu'
    # Then I should be on the 'create menu' page
