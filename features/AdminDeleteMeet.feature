Feature: Delete Meet
  
  As an admin
  I want to delete a meet with its general information
  So that I can remove a meet if needed
  
 Background: The following meets have been added to the meets table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
   
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date | end_date    |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |
  | Aoha Diamond League 2  |       Doha   |       QAT        | 06/05/2016| 06/05/2016 |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |
 
  
  And I am logged in with email of "admin@gmail.com" and a password "password" 
  
  Scenario: Admin Deletes Meet
    When I am on the Meets screen 
    And I click "Doha Diamond League"
    When I press "Delete"
    Then I am on the Meets screen
    And I should not see "Doha Diamond League"