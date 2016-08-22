Feature: As a restaurant owner
  In order to become an affiliate
  I want to be able to register an account

  Scenario: Accessing the signup page
    Given I am on the "home" page
    And I click "Register your restaurant"
    Then I should be on the "signup" page
    And I should see "Sign up"

  Scenario: Registering an account
    Given I navigate to the "signup" page
    And I fill in "Email" with "admin@admin.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click on "Sign up"
    Then I should be on the "home" page
    # this is a temporary path, when the restaurant create page is finished this link will be replaced
