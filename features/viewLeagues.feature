Feature: View Leagues

Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following leagues have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date | end_date    |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |
  | Doha Diamond League 2  |       Doha   |       QAT        | 06/05/2016| 06/05/2016 |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |
  | Eugene Diamond League  |      Eugene  |       USA        | 28/05/2016| 28/05/2016 |
  | Monaco Diamond League  |      Monaco  |       MON        | 15/07/2016| 15/07/2016 |
   
  

Scenario: View Current Leagues
  Given I am logged in with email of "admin@gmail.com" and a password "password"
  Then I should not see "My Leagues"
  And I should not see "Join League"
  
Scenario: User views all available leagues
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I click "Join League"
  Then I should see "MyLeague"
  And I should see "otherLeague"
  And I should see "newLeague1"
 