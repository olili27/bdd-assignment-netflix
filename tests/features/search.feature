Feature: Search for Movies/Shows
    As a user with an netflix account 
    I want to search for shows and movies
    So that I can easily find something to watch

    Background:
        Given I am connected to the internet
        And I sign into a netflix account
        And The account has an active subscription
        And I am on the browse page

    Scenario: Search For a movie/show that exists on netflix
    Given A show "Stranger things" is available on netflix
    When I search for "Stranger Things"
    Then I should see "Stranger Things" in the results as the first choice
    And I should see other movies/shows related to the word "Stranger things"

    Scenario: Search For a movie/show that does not exist on netflix
    Given A movie "RandomNonexistentShow" is available on netflix
    When I search for "RandomNonexistentShow"
    Then I should see other movies/shows related to the word "RandomNonexistentShow"

    Scenario: Search is Case-Insensitive
    Given A show "Breaking Bad" is available on netflix
    When I search for "breaking Bad"
    Then I should see "Breaking Bad" in the results
    And I should other movies/shows related to the word "breaking bad"