Feature: Manage sign_up_and_sign_ins
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new sign_up_and_sign_in
    Given I am on the new sign_up_and_sign_in page
    And I press "Create"

  Scenario: Delete sign_up_and_sign_in
    Given the following sign_up_and_sign_ins:
      ||
      ||
      ||
      ||
      ||
    When I delete the 3rd sign_up_and_sign_in
    Then I should see the following sign_up_and_sign_ins:
      ||
      ||
      ||
      ||
