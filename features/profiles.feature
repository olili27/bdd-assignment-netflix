Feature: User Profiles
    As a user with an netflix account 
    I want to manage multiple profiles
    So that different viewers can have personalized experiences

    Background:
        Given I am connected to the internet
        And I already signed in
        And I chose my user profile
        And I have an active subscription
        Given multiple profiles exist

    Scenario: Switch Profile
    And I am on the browse page
    When I click a profiles button
    Then I should see all profiles that exist
    And I should be able to select another profile
    And I should see content personalized for that profile on the browse page

    Scenario: Create a New Profile
    Given I am on the manage profiles page
    When I click "Add Profile" and enter a name
    Then a new profile should be created
    And The new profile should be listed among the existing profiles

    Scenario: Delete a Profile
    Given I am on the manage profiles page
    And all the profiles are listed
    And I click on a given profile
    And I am on the preferences page for that profile 
    And There is an option to delete the profile
    When I decide to delete this profile
    Then I should see a pop asking me to confirm or cancel the delete action
    And I confirm the delete action
    Then the profile should be deleted
    And I am redirected to the manage profiles page
    And see the list of profiles excluding the one I deleted
    

