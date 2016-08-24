@javascript
Feature: As a visitor
  In order to display nearby restaurants
  I want to be able to establish my geolocation


  Scenario: Get visitor geolocation
    Given I am on the "home" page
    And I see a Google Map
    Then my location should be established
