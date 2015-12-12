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
   
  Given the following athletes have been added to FantasyTrack:
   
  |    first_name    |    last_name |   birth_date     |  country  |   notes  |
  |      Barry       |       Bonds  |    02/02/1992    |   Brazil  |  Player B|
  |     Charlie      |     Chaplin  |   03/03/1993     |   China   | Player C |
  |       Danny      |     DeVito   |   04/04/1994     |  Denmark  | Player D |
  |       Emilio     |      Eugene  |   05/05/1995     |   Egypt   | Player E |
  |        Fred      |      Monaco  |   06/06/1996     |   France  | Player F |
  
  Given the following athletes are added to event "800M MEN" under "Doha Diamond League":
  |    first_name    |    last_name |   birth_date     |  country  |   notes  |
  |      Barry       |       Bonds  |    02/02/1992    |   Brazil  |  Player B|
  |     Charlie      |     Chaplin  |   03/03/1993     |   China   | Player C |
  |       Danny      |     DeVito   |   04/04/1994     |  Denmark  | Player D |
  
 

  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |    
  |     cheetah        |      rose0     |    
  |     eagles         |      rose1     |   
  Given I am logged in with email of "tester@testing.com" and a password "tester" 
  And I am on the "eagles" homepage
 
 Scenario: View released meets:
   Given I am on "My Team" of the league
   Then I should see "Doha Diamond League"
   And I should see "Eugene Diamond League"
   And I should not see "Shanghai Diamond League"
   And I should not see "Monaco Diamond League"
   
 Scenario: View events
   Given I am on "My Team" of the league
   And I click "Doha Diamond League"
   Then I should see "100M MEN"
   Then I should see "800M MEN"
   And I should see "TRIPLE JUMP MEN"
   
Scenario: User add players to the team
   Given I am on "My Team" of the league
   When I click "Doha Diamond League"
   And I click "100M MEN"
   Then I should see "Barry"
   
   When I clicked "Add" on the row with name of "Barry"
   Then I will see "Drop" button on the row with name of "Barry"
   
   When I clicked "Drop" on the row with name of "Barry" 
   Then I will see "Add" button on the row with name of "Barry"
 
   
 
   
 