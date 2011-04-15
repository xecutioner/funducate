Feature: Manage comments
  In order to comment successfully
  As a User
  wants to comment on Person request

  @javascript
  Scenario: create new comment
    Given A request is created
    Given I am currently on the home page
    When I follow "Requests"
    And I follow "Read_more"
    And I fill in "Name" with "khurra"
    And I fill in "Comment" with "this is me khurra "
    And I fill in "Email" with "khurra@email.com"
    And I press "Create Comment"
    And I should see "Your Comment was successfully Posted"