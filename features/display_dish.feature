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
      | name        | price | calories | ingredients            | allergy_info    |
      | Capricciosa | 50    |          |                        |                 |
      | Margharita  | 50    | 1000     |                        |                 |
      | Bolognese   | 50    | 1000     | Tomato,Cheese, Sausage |                 |
      | Vesuvio     | 50    | 1000     | Tomato, Cheese, Ham    | Gluten, Lactose |

  Scenario: Display dish info about Capricciosa
    Given I am on the "show" page for dish: "Capricciosa"
    Then I should see "Capricciosa"
    And I should see "Price: 50.0 kr"

  Scenario: Display dish info about Margharita
    Given I am on the "show" page for dish: "Margharita"
    Then I should see "Margharita"
    And I should see "Price: 50.0 kr"
    And I should see "Calories: 1000 Kcal"

  Scenario: Display dish info about Bolognese
    Given I am on the "show" page for dish: "Bolognese"
    Then I should see "Bolognese"
    And I should see "Price: 50.0 kr"
    And I should see "Calories: 1000 Kcal"
    And I should see "Ingredients: Tomato,Cheese, Sausage"

  Scenario: Display dish info about Vesuvio
    Given I am on the "show" page for dish: "Vesuvio"
    Then I should see "Vesuvio"
    And I should see "Price: 50.0 kr"
    And I should see "Calories: 1000 Kcal"
    And I should see "Ingredients: Tomato, Cheese, Ham"
    And I should see "Allergy info: Gluten, Lactose"

