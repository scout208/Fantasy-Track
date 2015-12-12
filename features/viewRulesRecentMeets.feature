Feature: View website Rules, recent meets and twitter
  
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
   
Scenario: without login view
  Given I am on the Fantasy-Track home page 
  Then I should see twitter icon
  And I should see "Twitter"
  And I should see "View details >>"
  And I should see "Rules"
  And I should see "How to Play Fantasy Track"
  And I should see "Rules >>" button
  And I should see "Results"
  And I should see "View Results from the last meet"
  And I should see "Results >>" button
  
Scenario: without login click twitter
  Given I am on the Fantasy-Track home page 
  When I press "View details >>"
  Then I should be still on the homepage
 
  
Scenario: without login click rules
  Given I am on the Fantasy-Track home page 
  When I press "Rules >>"
  Then I should see the rules view
  
Scenario: without login click Results
  Given I am on the Fantasy-Track home page 
  When I press "Results >>"
  Then I should be still on the homepage
  And I should see "Please log in to view recent meets!"
  
Scenario: User view recent meets
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I am on the Fantasy-Track home page 
  When I press "Results >>"
  Then I should see "Doha Diamond League"
  And I should see "Eugene Diamond League"
  And I should not see "Shanghai Diamond League"
  And I should not see "Monaco Diamond League"


Scenario: View Scoring rules as a user
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I am on the Fantasy-Track home page
  And I press "Rules"
  Then I should see the rules view
  