Feature: Signin
    As a user with an netflix account 
    I want to signin
    So that I can access my account securely

    Background:
        Given I am connected to the internet
        And I sign into a netflix account
        And The account has an active subscription
        And I am on the signin page

    Scenario: Successful Signin with a correct email and correct password
    When I enter a correct email 
    And I enter a correct password
    And I click the signin button
    Then I should be redirected to profiles page
    And I choose a profile
    Then I am redirected to the browse page
    And I see the dashboard with movies/shows in the different categories e.g recommendations, my list, continue watching

    Scenario: Unsuccessful Signin with a correct email and incorrect password
    When I enter a correct email 
    But I enter an incorrect password
    And I click the signin button
    Then I should remain on the signin page
    And I should see a message `Incorrect password for {correct email}. You can use a sign-in code, reset your password or try again`.

    Scenario: Successful Signin with a correct email and correct and valid signin code
    When I enter a correct email 
    And I click send signin code button
    Then I should receive an email with a signin code
    And I enter the correct and valid signin code that was sent
    Then I should be redirected to profiles page
    And I choose a profile
    Then I am redirected to the browse page
    And I see the dashboard with movies in the different categories e.g recommendations, my list


