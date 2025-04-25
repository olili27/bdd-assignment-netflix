Feature: Watch list Management
    As a user with an netflix account 
    I want to manage my watch list
    So that I can save content to view later

    Background:
        Given I am connected to the internet
        And I sign into a netflix account
        And The account has an active subscription

    Scenario: Add to Watch list
    Given I am on the browse page
    Given I am previewing a movie "The Crown"
    And "The Crown" is not in my watch list
    When I click the "Add to Watch list" button
    Then "The Crown" should appear in my watch list

    Scenario: Remove from Watch list
    Given I am on my watch list page or browse page
    And I am previewing a movie "The Crown"
    And "The Crown" is in my watch list
    When I click the "Remove from Watch list" button
    Then "The Crown" should no longer be in my watch list

    Scenario: View Watch list
    Given I am on the browse page
    And I have added movies/shows to my watch list
    When I open the watch list page
    Then I should see all the added movies/shows
