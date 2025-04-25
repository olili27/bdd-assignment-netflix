Feature: User Profiles
    As a user with an netflix account 
    I want to manage multiple profiles
    So that different viewers can have personalized experiences

    Background:
        Given I am connected to the internet
        And I sign into a netflix account
        And The account has an active subscription
        And Multiple profiles exist
        And I choose a profile

    Scenario: Switch Profile
    Given I am on the browse page
    When I click a profiles button
    And I see all profiles that exist
    When I select another profile
    Then I should see content personalized for that profile on the browse page

    Scenario: Create a New Profile
    Given I am on the manage profiles page
    And I see all profiles that exist
    When I click "Add Profile" 
    And I enter a name
    And Confirm to create the profile
    Then A new profile should be created
    And The new profile should be listed among the existing profiles on the manage profiles page

    Scenario: Delete a Profile
    Given I am on the manage profiles page
    And I see all profiles that exist
    When I select a given profile
    And I am redirected to the preferences page for that selected profile 
    And There is an option to delete the profile
    When I decide to delete this profile
    And I am asked to confirm or cancel the delete action
    And I confirm the delete action
    Then The profile should be deleted
    And I am redirected to the manage profiles page
    And I should see the list of profiles excluding the one I deleted
    

