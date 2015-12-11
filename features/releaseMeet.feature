Feature: releaseMeet
  
 Background: The following meets have been added to the meets table
 
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date| end_date   | released  |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |   false   |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |   true    |
 
   
  And I am logged in with email of "admin@gmail.com" and a password "password" 

Scenario: Admin Views unreleased Event table
  Given I am on the Meets screen
  When I click "Doha Diamond League"
  And I should see "Released: false"
    
Scenario: View already released Event table
  Given I am on the event screen of "Doha Diamond League"
  When I press "Release"
  Then I should be on the meets screen
  When I click "Doha Diamond League"
  And I should see "Released: true"
  
 
    