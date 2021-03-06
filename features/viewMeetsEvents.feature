Feature: View Meets and Events

Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date| end_date   | released  | scored |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |   true    |  true  |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |   true    |  false |
  | Eugene Diamond League  |      Eugene  |       USA        | 28/05/2016| 28/05/2016 |   false   |  false |
  | Monaco Diamond League  |      Monaco  |       MON        | 15/07/2016| 15/07/2016 |   false   |  false |
   
  Given the following Events have been added to Doha Diamond League Meet:
  |     event_name         |   event_type |   
  |      800M MEN          |       0      |  
  |    400M HURDLES MEN    |       1      |  
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
  

 And I am on the Fantasy-Track home page

Scenario: User Views the upcoming meets
  
Given I am logged in with email of "tester@testing.com" and a password "tester"
When I click "Upcoming Meets"
Then I should see all of the meets
And I should not see "Create New Meet" Link

Scenario: User select meet to view related events
Given I am logged in with email of "tester@testing.com" and a password "tester"
And I am on the Meets screen
When I click "Doha Diamond League"
Then I should see "Meet Detail"
And I should see "Meet: Doha Diamond League"
And I should see "Location: Doha, QAT"
And I should see "Start Date: 2015-05-15"
And I should see "End Date: 2015-05-15"
And I should see "Released: true"
And I should see all events for "Doha Diamond League" Meet
And I should not see "Create New Event" Link
And I should not see "Delete" Button
And I should not see "Score Meet" Button
And I should not see "Release" Button


Scenario: Admin Views meet table
  
Given I am logged in with email of "admin@gmail.com" and a password "password"
When I click "Meets"
Then I should see all of the meets
And I should see "Meet List"
And I should see "Create New Meet" Link


Scenario: Admin Views meet detail that is released and scored
Given I am logged in with email of "admin@gmail.com" and a password "password"
And I am on the Meets screen
When I click "Doha Diamond League"
Then I should see "Meet Detail"
And I should see "Meet: Doha Diamond League"
And I should see "Location: Doha, QAT"
And I should see "Start Date: 2015-05-15"
And I should see "End Date: 2015-05-15"
And I should see "Released: true"
And I should see all events for "Doha Diamond League" Meet
And I should not see "Create New Event" Link
And I should see "Delete" Button
And I should see "Score Meet" Button
And I should not see "Release" Button

Scenario: Admin Views meet detail that is released but not scored
Given I am logged in with email of "admin@gmail.com" and a password "password"
And I am on the Meets screen
When I click "Shanghai Diamond League"
Then I should see "Meet: Shanghai Diamond League"
And I should see "Location: Shanghai, CHN"
And I should see "Start Date: 2016-05-14"
And I should see "End Date: 2016-05-14"
And I should see "Released: true"
And I should see all events for "Shanghai Diamond League" Meet
And I should see "Create New Event" Link
And I should see "Delete" Button
And I should see "Score Meet" Button
And I should not see "Release" Button

Scenario: Admin Views meet detail that is not released
Given I am logged in with email of "admin@gmail.com" and a password "password"
And I am on the Meets screen
When I click "Eugene Diamond League"
Then I should see "Meet: Eugene Diamond League"
And I should see "Location: Eugene, USA"
And I should see "Start Date: 2016-05-28"
And I should see "End Date: 2016-05-28"
And I should see "Released: false"
And I should see all events for "Eugene Diamond League" Meet
And I should see "Create New Event" Link
And I should see "Delete" Button
And I should see "Release" Button
And I should not see "Score Meet" Button
