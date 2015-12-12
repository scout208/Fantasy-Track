Feature: View Entrants

Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date| end_date   | released  |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |   true    |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |   false   |
  | Eugene Diamond League  |      Eugene  |       USA        | 28/05/2016| 28/05/2016 |   false   |
  | Monaco Diamond League  |      Monaco  |       MON        | 15/07/2016| 15/07/2016 |   false   |
   
  
  Given the following Events have been added to Doha Diamond League Meet:
  |     event_name         |   event_type |   
  |      800M MEN          |       0      |  
  |  400M HURDLES MEN      |       1      |  
  |    TRIPLE JUMP MEN     |       0      | 
  |      SHOT PUT MEN      |       3      |  
  |    JAVELIN THROW MEN   |       2      | 
  
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
  

Scenario: User select event to view attending entrants 
Given I am logged in with email of "tester@testing.com" and a password "tester"
And I am on the event screen of "Doha Diamond League"
When I click "800M MEN"
Then I should see all the entrants attending "800M MEN"
And I should see "Event: 800M MEN"
And I should see "Event type: Sprint/Hurdle"
And I should see "Results" Link
And I should not see "Add Entrant" Link
And I should not see "Delete Event" Button
And I should not be seeing "Remove Entrant" Link on each row
And I should not be seeing "Enter Result" Link on each row
And I should be seeing "Add" button on each row


Scenario: User added a entrant as a team member
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I am on the event screen of "Doha Diamond League"
  When I click "800M MEN"
  And I clicked "Add" on the row with name of "Barry"
  Then I will see "Drop" button on the row with name of "Barry"

Scenario: Admin Views Entarnt table
Given I am logged in with email of "admin@gmail.com" and a password "password"
And I am on the event screen of "Doha Diamond League"  
When I click "800M MEN"
Then I should see "Event Detail"
And I should see "Event: 800M MEN"
And I should see "Event type: Sprint/Hurdle"
And I should see all the entrants attending "800M MEN"
And I should see "Results" Link
And  I should see "Add Entrant" Link
And I should see "Delete Event" Button
And I should be seeing "Remove Entrant" Link on each row
And I should be seeing "Enter Result" Link on each row
And I should not be seeing "Add" button on each row
And I should not be seeing "Drop" button on each row

When I click "Charlie Chaplin"
And I should see "Edit Athlete" Link