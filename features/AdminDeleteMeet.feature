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
  |  meet_name             | location_city| location_country | start_date| end_date   |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |
  | Aoha Diamond League 2  |       Doha   |       QAT        | 06/05/2016| 06/05/2016 |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |
 
  
  And I am logged in with email of "admin@gmail.com" and a password "password" 
  
  Scenario: Admin Deletes Meet
<<<<<<< HEAD
    Given An admin has created a meet with name "Rome Diamond League" and location_city "Rome" and location_country "Italy" and start_date "2016-01-01" and end_date "2016-01-01"
    And I have logged in as admin
    And I have visited the "Rome Diamond Leauge" meet details page
    
    
    When I have clicked the "delete" button
    And I am on the Meets page
    Then I should no longer see a meet with name "Rome Diamond League" and location_city "Rome" and location_country "Italy" and start_date "2016-01-01" and end_date "2016-01-01"
=======
    When I am on the Meets screen 
    And I click "Doha Diamond League"
    When I press "Delete"
    Then I am on the Meets screen
    And I should not see "Doha Diamond League"
>>>>>>> b8442ddd0ca986f640f3bcce82f2c4a9294c556a
