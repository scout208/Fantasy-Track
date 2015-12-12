Feature: viewMyTeam
  
 Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date| end_date   | released  |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |   true    |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |   false   |
  | Eugene Diamond League  |      Eugene  |       USA        | 28/05/2016| 28/05/2016 |   true    |
  | Monaco Diamond League  |      Monaco  |       MON        | 15/07/2016| 15/07/2016 |   false   |

  Given the following Events have been added to Doha Diamond League Meet:
  |     event_name         |   event_type |   
  |      100M MEN          |       0      |  
  |      800M MEN          |       1      |  
  |    TRIPLE JUMP MEN     |       2      | 
 

  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |    
  |     cheetah        |      rose0     |    
  |     eagles         |      rose1     |   
  
  Given the following teams apart of the league "eagles"
  | team_name | points |
  | team1 | 100 |
  | team2 | 105 |
  | team3 | 110 |
 
  
  Given I am logged in with email of "tester@testing.com" and a password "tester" 
  And I am on the "eagles" homepage
 
 Scenario: View League Standings:
   Given I am on the "eagles" homepage
   When I click "Standings" button
   Then I should see the league standings for "eagles"
 
 Scenario: View Correct order of teams
   Given I am on the "Standings" page
   Then I should see "team3" first
   And I should see "team2" second
   And I should see "team3" last
   
  Scenario: Ensuring Correct Points
    Given I am on the "Standings" page
    Then I should see "team3" with "110" points
    And I should see "team2" with "105" points
    And I should see "team1" with "100" points
    
   
 