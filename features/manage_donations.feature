Feature: Manage donations
  In order to donate successfully
  As a Donor
  wants to donate Person

  @javascript
  Scenario: create new donation
    Given A request is created
    Given I am currently on the home page
    When I follow "Requests"
    And I follow "Read_more"
    And I follow "donate"
    When I select "Visa" from "Payment type"
    And I fill in "Donor email" with "donor@email.com"
    And I fill in "Donor name" with "Donor"
    And I fill in "Card number" with "0123456789123456"
    And I fill in "Donated amount" with "420"
    And I press "Create Donation"
    Then 1 donation should exist
    And I should see "You Have successfully Donated, An Email has been sent to student"