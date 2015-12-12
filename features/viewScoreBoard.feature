Feature: view Score Board
 
Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |
  |   tester   | tester@testing.com |  user  |    tester   |
  
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date| end_date   | released  |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |   true    |
  | Eugene Diamond League  |      Eugene  |       USA        | 28/05/2016| 28/05/2016 |   true    |
  
  
  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |    
  |     eagles         |      rose1     | 
  
  Given I am logged in with email of "tester@testing.com" and a password "tester" 
  And I am on the "eagles" homepage
  And I am on "Scoreboard" of the league 
  

  Scenario: See the score board of the league_name
    Then I should see "eagles Meet Scoreboards"
    And I should see "Doha Diamond League"
    And I should see "Eugene Diamond League"
    And I should see "Scores for Doha Diamond League"
    
  Scenario: See the boxscore of individual Team Members on first meet
    When I clicked "Box Score" on the first row 
    Then I should see "tester Box Score For Doha Diamond League"
    