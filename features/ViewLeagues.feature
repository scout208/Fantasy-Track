Feature: View Leagues

Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  |   tester2  | tester2@testing.com|  user  |    tester2  |

  
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
  And I can see "cheetah" with "Join" Link
  And I can see "eagles" with "Enter" Link
  
Scenario: User view involved league list while is not in any league
  Given I am logged in with email of "tester2@testing.com" and a password "tester2"
  And I click "My Leagues"
  Then I should not see "cheetah"
  And I should not see "eagles"
  And I should see "Create New League"
  
Scenario: user view details of league as creator
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I created a league with name of "lighting" and passcode of "rose2"
  When I click "My Leagues"
  And I clicked "Enter" on the row with name of "lighting"
  Then I should see "Welcome to lighting"
  And I should see "Invite Friends" Link
  
Scenario: user view details of league as joiner from my leagues
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  When I click "My Leagues"
  And I clicked "Enter" on the row with name of "eagles"
  Then I should see "Welcome to eagles"
  And I should see "Invite Friends" 
  
  
Scenario: user view details of league from search leagues
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  When I click "Join League"
  And I clicked "Enter" on the row with name of "eagles"
  Then I should see "Welcome to eagles"
  And I should see "Invite Friends" 