Feature: Manage sign_up_and_sign_ins
  In order to create new student account
  As a new Person
  I want to be able to sign in

  @javascript
  Scenario: Register new student
    Given I am currently on registration page
    And I fill in "Name" with "Manish"
    And I fill in "Level" with "Under Graduate"
    And I fill in "Gpa" with "3.4"
    And I fill in "Address" with "Kathmandu"
    And I fill in "Dob" with "10/06/1986"
    And I fill in "Email" with "manish@gmail.com"
    And I fill in "Password" with "secret"
    And I fill in "Password confirmation" with "secret"
    And I press "Sign up"
    Then 1 user should exist
    And I should see "Welcome! You have signed up successfully"

  @javascript
  Scenario: Logging in a student
    Given a student exists with name "Manish" and level "Under Graduate" and gpa "3.4" and address "Kathmandu" and dob "10/06/1986" and email"new_id@gmail.com" and password "secret"
    Given I am currently on login page
    And I fill in "Email" with "new_id@gmail.com"
    And I fill in "Password" with "secret"
    And I press "Sign in"
    Then I should see "Signed in successfully"