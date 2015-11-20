Feature: Create Leagues

Background: The following users have been added to user table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  |   test2    | test2@testing.com  |  user  |    tester   |
  
  Given the following leagues have been added to FantasyTrack:
    |userID | leagueName | password |
    | 2 | MyLeague | passcode |
  
And I am on the Fantasy-Track home page

Scenario: Get to Current League List
  Given I am on the FantasyTrack homepage
  And I click "My Leagues"
  Then I should be redirected to "leagues page"
  And I Should see title "Your League List"
  
Scenario: Go to Create A New league Screen
  Given I am on the "My Leagues" page
  And I click "Create New League"
  Then I should be directed to the Create a New League Screen
 
Scenario: Create A New league Screen
  Given I am on the Create a New League screen
  And I fill League Name with "NewLeague"
  And I fill League Password with "password"
  And I click "Create League"
  Then I should be redirected to "leagues page"
  And I should see League "NewLeague"