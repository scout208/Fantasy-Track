Feature: Add Events to Meet
  
 Background: The following data have been added to the meets table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     

  
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date | end_date  |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |
  | Eugene Diamond League  |      Eugene  |       USA        | 28/05/2016| 28/05/2016 |
   
  
  Given the following Events have been added to Doha Diamond League Meet:
  |     event_name         |   event_type |   
  |      800M MEN          |       0      |  
  |  400M HURDLES MEN      |       1      |  
  |    TRIPLE JUMP MEN     |       0      | 

  And I am logged in with email of "admin@gmail.com" and a password "password" 

Scenario: delete event in meets table
  When I am on the Meets screen
  And I click "Doha Diamond League"
  And I click "800M MEN"
  And I press "Delete Event"
  Then I am on the event screen of "Doha Diamond League" 
  And I should not see "800M MEN"
  
Scenario: go to create event page
  When I am on the event screen of "Eugene Diamond League"
  And I click "Create New Event"
  Then I should be directed for new event page

Scenario: create a new event
  Given I am on the event screen of "Shanghai Diamond League"
  And I click "Create New Event"
  And I fill in event name with "SHOT PUT MEN" and Event type with "2"
  And I press "Save"
  Then I should be on the event screen of "Shanghai Diamond League"
  And I will see "SHOT PUT MEN" with Event type of "Throws"
  
   