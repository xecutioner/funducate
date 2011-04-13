Feature: Manage donations
  In order to donate successfully
  As a Donor
  wants to donate Person

  @javascript
  Scenario: create new donation
    Given A request is created
    Given I am currently on the home page
    Given sleep 5 seconds
    And I follow "Read All"
    And I follow "Donate"
    And I fill in "Donor email" with "donor@email.com"
    And I fill in "Donor name" with "Donor"
    And I fill in "Payment type" with "Credit Card"
    And I fill in "Card number" with "0123456789"
    And I fill in "Donated amount" with "420"
    And I press "Create Donation"
    Then 1 donation should exist
    And I should see "You Have successfully Donated, An Email has been sent to student"