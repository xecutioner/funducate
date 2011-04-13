Feature: Manage edit_and_delete_requests
In order to edit and delete request
As a Person
wants to edit and delete request of that Person

  @javascript
  Scenario: Manage edit_request
    Given I am authenticated
    Given I Create request
    And I am currently on request_index page
    And I follow "Read All"
    And I follow "Edit Request Content"
    Then I fill in "Title" with "Tested Title"
    And I press "Update Request"

  @javascript
  Scenario: Manage delete_request
    Given I am authenticated
    Given I Create request
    And I am currently on request_index page
    And I follow "Read All"
    And I disable confirm dialog box
    And I follow "Delete Request"