Feature: Signin
    As a user with an netflix account 
    I want to signin
    So that I can access my account securely

    Background:
        Given I am connected to the internet
        And I already signed up for a netflix account
        And I have an active subscription
        And I am on the signin page

    Scenario: Successful Signin with valid email and valid password
    When I enter a valid email and a valid password
    And I click the signin button
    Then I should be redirected to profiles page
    And I choose my profile
    Then I am redirected to the browse page
    And I see the dashboard with movies in the different categories e.g recommendations, my list

    Scenario: Unsuccessful Signin with valid email and invalid password
    When I enter a valid email 
    But I enter an incorrect password
    And I click the signin button
    Then I should remain on the signin page
    And I should see a message `Incorrect password for {valid email}. You can use a sign-in code, reset your password or try again`.

    Scenario: Successful Signin with a valid email and signin code
    When I enter a valid email 
    And I click send signin code button
    Then I should receive an email with a signin code
    And I enter the correct signin code that was sent
    Then I should be redirected to profiles page
    And I choose my profile
    Then I am redirected to the browse page
    And I see the dashboard with movies in the different categories e.g recommendations, my list


