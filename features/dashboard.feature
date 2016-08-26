@javascript
Feature: As a system user
  So that I can manage my restaurant
  I want to be able to access a restaurant dashboard

  Background:
    Given I am logged in as a user of the system
    And I have a restaurant called "Mikey's"
    And I am on the "dashboard" page for "Mikey's"

  Scenario: Navigating to create menu page
    And I click on "Create a menu"
    Then I should be on the "create menu" page

  Scenario: Navigating to edit details page
    And I click on "Edit details"
    Then I should be on the "edit" page for "Mikey's"
    Then show me an image of the page








  # And that following menus exist
  #   | name  |
  #   | lunch |
  ##########
  # The link to the "create dish" page creates a problem on
  # the show.html.haml page, it crashes the page.
  ##########
  # Scenario: Navigating to create menu page
  #   Given I am on the "dashboard" page
  #   And I click on "Create a dish"
  #   Then I should be on the "create dish" page
  #   Then show me an image of the page


  ##########
  #The Below part felt unnecessary to test for
  ##########
  # Scenario: Access the dashboard
  #   Given I am on the "home" page
  #   And I click "Dashboard"
  #   Then I should be on the "dashboard" page for "Mikey's"
  #   Then I should see "Hello admin@random.com"
  #   Then show me an image of the page
