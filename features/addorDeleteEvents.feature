Feature: Add Events to Meet
  
 Background: The following meets have been added to the meets table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date | end_date  |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |
  | Doha Diamond League 2  |       Doha   |       QAT        | 06/05/2016| 06/05/2016 |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |
  | Eugene Diamond League  |      Eugene  |       USA        | 28/05/2016| 28/05/2016 |
  | Monaco Diamond League  |      Monaco  |       MON        | 15/07/2016| 15/07/2016 |
   
  
  Given the following Events have been added to Doha Diamond League Meet:
  |     event_name         |   event_type |   
  |      800M MEN          |       0      |  
  |  400M HURDLES MEN      |       1      |  
  |    TRIPLE JUMP MEN     |       0      | 
  |      SHOT PUT MEN      |       3      |  
  |    JAVELIN THROW MEN   |       2      | 

  And I am logged in with email of "admin@gmail.com" and a password "password" 

Scenario: delete event in meets table
  Given I am on the Meets screen
  And I click "Eugene Diamond League"
  And I click "Delete"
  And I should not see "Eugene Diamond League"
  
Scenario: create a new event
  Given I am on the meets page
  And I click "Eugene Diamond League"
  Then I click "Create New Event"
  Then I should be directed to enter a new event page

Scenario: Create new Event
  Given I am on the create new event page for the "Eugene Diamond Meet"
  And I fill in event name with "SHOT PUT MEN"
  And I fill Event type with "2"
  And I click "Save"
  Then I should be redirected back to the screen for the "Eugene Diamond Meet"
  And I shoud see "SHOT PUT MEN"
  
   