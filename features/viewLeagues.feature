Feature: View Leagues

Background: The following users have been added to user table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  |   test2    | test2@testing.com  |  user  |    tester   |
  
  Given the following leagues have been added to FantasyTrack:
    | id | leagueName | password |
    | 2 | MyLeague | passcode |
    | 3 | otherLeague | password |
    | 2 | newLeague1 | newpassword |
  
And I am on the Fantasy-Track home page

Scenario: View Current Leagues
  Given I am on the FantasyTrack homepage
  And That I am logged into account "tester" with password 
  And I click "My Leagues"
  Then I should see "MyLeague"
  But I should not see "otherLeague" or "newLeague1"
  
Scenario: User views all available leagues
  Given I am on the FantasyTrack homepage
  And I click "Join League"
  Then I should see "MyLeague"
  And I should see "otherLeague"
  And I should see "newLeague1"
 