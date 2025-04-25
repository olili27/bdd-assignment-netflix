Feature: Watch list Management
    As a user with an netflix account 
    I want to manage my watch list
    So that I can save content to view later

    Background:
        Given I am connected to the internet
        And I already signed up for a netflix account
        And I have an active subscription

    Scenario: Add to Watch list
    And I am on the browse page
    Given I am viewing "The Crown"
    When I click the "Add to Watch list" button
    Then "The Crown" should appear in my watch list

    Scenario: Remove from Watch list
    Given I am in on my watch list page
    And "The Crown" is in my watch list
    When I click the "Remove from Watch list" button
    Then "The Crown" should no longer be in my watch list

    Scenario: View Watch list
    Given I am on the browse page
    And I have added items to my watch list
    When I open the watch list page
    Then I should see the added items
