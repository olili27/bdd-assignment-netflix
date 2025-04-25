Feature: Search for Content
    As a user with an netflix account 
    I want to search for shows and movies
    So that I can easily find something to watch

    Background:
        Given I am connected to the internet
        And I already signed up for a netflix account
        And I have an active subscription
        And I am on the browse page

    Scenario: Search when the desired movie exists
    Given "stranger things" is part of the movies on netflix
    When I search for "Stranger Things"
    Then I should see "Stranger Things" in the results as the first choice
    And I should see other movies/shows related to the word "stranger things"

    Scenario: Search when the desired movie does not exist
    Given "RandomNonexistentShow" is not part of the movies on netflix
    When I search for "RandomNonexistentShow"
    Then I should see other movies/shows related to the word "RandomNonexistentShow"

    Scenario: Search is Case-Insensitive
    Given "Breaking bad" is part of the movies on netflix
    When I search for "breaking bad"
    Then I should see "Breaking Bad" in the results