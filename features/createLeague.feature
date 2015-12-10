Feature: Create Leagues

Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |
  |     cheetah        |      rose0     |
  |     eagles         |      rose1     |      
  
Scenario: User go to create league page
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I click "My Leagues"
  And I click "Create New League"
  Then I should see "Create A New League"
  And I should see the view where I am able to create new league

Scenario: User create league  
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I am on the view to create league
  When I fill in the league name with "lighting" and pass code with "rose2"
  And I press "Create League"
  Then I am on the my league page
  And I should see "lighting successcully created."
  And I should see "lighting"
  
Scenario: user see the created league in public League List
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I created a league with name of "lighting" and passcode of "rose2"
  When I click "Join League"
  Then I should see "lighting"