Feature: Video Playback
    As a user with an netflix account 
    I want to play and control video content
    So that I can watch my favorite shows and movies

    Background:
        Given I am connected to the internet
        And I sign into a netflix account
        And The account has an active subscription
        And I choose a profile
        And I am on the browse page
        And I choose a movie to watch

    Scenario: Pause The Movie
    Given The movie is playing
    When I click the pause button
    Then The movie should stop playing
    
    Scenario: Play The Movie
    Given The movie is paused
    When I click the play button
    Then The movie should start playing

    Scenario: Seek Forward
    Given The movie is paused or playing
    When I click the forward button
    Then The playback should jump ahead by 10 seconds
