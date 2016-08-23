Feature: As a System user
  In order to get clients
  I want to be able to add my restaurant's information

  Background:
    Given I am on the "restaurants" page

  Scenario: Successfully create a restaurant
    And I fill in "Restaurant name" with "My Restaurant"
    And I fill in "Restaurant address" with "Main Stree 1"
    And I fill in "Zip code" with "90210"
    And I select "5km" from "Delivery radius"
    And I fill in "Public phone number" with "031-123456"
    And I fill in "Owner name" with "Thomas"
    And I fill in "Owner address" with "Why???"
    And I fill in "Private phone number" with "Why??? "
    And I fill in "Email address" with "restaurant@random.com"
    And I fill in "Restaurant description" with "Lorem ipsum..."
    And I select "Italian" from "Select your cuisine"
    And I click on "Save"
    Then I should be on the "home" page

  Scenario: Restaurant create page fields not filled in
    Given I am on the "restaurants" page
    And I fill in "Restaurant name" with ""
    And I fill in "Restaurant address" with ""
    And I fill in "Zip code" with ""
    And I select "5km" from "Delivery radius"
    And I fill in "Public phone number" with ""
    And I fill in "Owner name" with ""
    And I fill in "Owner address" with ""
    And I fill in "Private phone number" with ""
    And I fill in "Email address" with ""
    And I fill in "Restaurant description" with ""
    And I select "Italian" from "Select your cuisine"
    And I click on the "Save" button
    Then I should see:
      | message                        |
      | Restaurant name is required    |
      | Restaurant address is required |
