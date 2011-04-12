Feature: Manage create_requests
  In order to create request for scholarship
  As a Person
  I want to be able to create request

  Scenario: Create new request
    Given a student exists with name "Manish" and level "Under Graduate" and gpa "3.4" and address "Kathmandu" and dob "10/06/1986" and email"new_id@gmail.com" and password "secret"
    Given I am currently on login page
    And I fill in "Email" with "new_id@gmail.com"
    And I fill in "Password" with "secret"
    And I press "Sign in"
    Then I should see "Signed in successfully"
    Given I am currently on request page
    And I press "Create"