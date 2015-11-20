Feature: View Leagues

Background: The following users have been added to user table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  |   test2    | test2@testing.com  |  user  |    tester   |
  
  Given the following leagues have been added to FantasyTrack:
    | 2 | MyLeague | passcode |
  
And I am on the Fantasy-Track home page

Scenario: View Current Leagues
  Given I am on the FantasyTrack homepage
  And I click "My Leagues"
  Then I should see "MyLeague"