Feature: View Leagues

Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |
  |     cheetah        |      rose0     |
  |     eagles         |      rose1     |      
  

Scenario: Admin cannot see Leagues
  When I am logged in with email of "admin@gmail.com" and a password "password"
  Then I should not see "My Leagues"
  And I should not see "Join League"
  

Scenario: User views all available leagues
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I click "Join League"
  Then I should see "League List"
  And I should see "cheetah"
  And I should see "eagles"
  And I should see "Join" Link
  
Scenario: User view involved league list while is not in any league
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I click "My Leagues"
  Then I should not see "cheetah"
  And I should not see "eagles"
  And I should see "Create New League"
  
Scenario: User create league  
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I click "My Leagues"
  And I click "Create New League"
  Then I should see "Create A New League"
  And I should see the view where I am able to create new league
  
  When I fill in the league name with "lighting" and pass code with "rose2"
  And I press "Create League"
  Then I am on the my league page
  And I should see "lighting"
  
Scenario: user see the created league in public League List
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I created a league with name of "lighting" and passcode of "rose2"
  When I fill in the league name with "lighting" and pass code with "rose2"
  And I press "Create League"
  Then I am on the my league page
  And I should see "lighting"
  