Feature: view Score Board
 
Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |  password   |     
  |   Kevin    | kevin@gmail.com    |  user  |  password   |
  |   Connor   | connor@gmail.com   |  user  |  password   |
  |   Nathan   | nathan@gmail.com   |  user  |  password   |
  |   Xi       | xi@gmail.com       |  user  |  password   |
  |   Leon     | leon@gmail.com     |  user  |  password   |
  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |    
  |     Hawkeye XC     |      hawkeye   |   

  Scenario: See the score board of the league_name
    Given I am logged in as a member of the league
    When I go to the the league scoreboard page
    Then I should see the table for league scoreboard
    
  Scenario: See the boxscore of individual Team Members
    Given I am logged in as a member of the league
    And I am on the league scoreboard page
    When I click on boxscore of a teammember
    Then I should see the box score of a teammember
 