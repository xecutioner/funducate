Feature: Manage create_requests
  In order to create request for scholarship
  As a Person
  I want to be able to create new request

  @javascript
  Scenario: Create new request
    Given I am authenticated
    Then I should see "Signed in successfully"
    Given I am currently on create_request page
    And I fill in "Title" with "I want to be a MITian"
    And I fill in "Pledged amount" with "100000"
    And I select "Year" as "2012"
    And I select "Month" as "January"
    And I select "Day" as "12"
    And I fill in "Description" with "This is what i always wanted to be"
    And I press "Create Request"
    Then 1 request should exist
    And I should see "Your Request was successfully created"