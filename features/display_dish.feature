#@javascript
Feature: As a System user
  In order to make it easier to select a dish
  I want to be able to create a full presentation of the dish


  Background:
    Given the following restaurant exists
      | name       |
      | Salvatores |

    And that following menus for "Salvatores" exist
      | name  |
      | lunch |

    And that following dishes for "lunch" exist
      | name        | price |
      | Capricciosa | 50    |
      | Margharita  | 50    |


  Scenario: Display dish info
    Given I am on the "show" page for dish: "Capricciosa"
    Then I should see "Capricciosa"
    And I should see "Price: 50.0 kr"
    Then show me the page