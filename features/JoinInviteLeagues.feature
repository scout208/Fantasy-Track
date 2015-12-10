Feature: Join and Invite friend to Leagues

Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |
  |     cheetah        |      rose0     |
  |     eagles         |      rose1     |      

And I am logged in with email of "tester@testing.com" and a password "tester"

  
Scenario: user go to Join a league page
  When I click "Join League"
  And I clicked "Join" on the row with name of "cheetah"
  Then I should be on the page to enter the league passcode

Scenario: user failed Join a league  
  Given I am on the view to join "cheetah"
  When I enter "fakepasscode" as passcode
  And I press "Save"
  Then I should be on the page to enter the league passcode
  And I should see "Wrong passcode please re-enter!"
  

Scenario: user successcully Join a league 
  Given I am on the view to join "cheetah"
  When I enter "rose0" as passcode
  And I press "Save"
  Then I am on the my league page
  And I should see "You have successcully joined cheetah!"
  And I should see "cheetah"
  
  
Scenario: user go to invite friend page
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  When I click "My Leagues"
  And I clicked "Enter" on the row with name of "eagles"
  And I click "Invite Friends"
  Then I should be on the page to enter the friend email for "eagles"

Scenario: user invite friend  
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I am on the view to invite new memeber for "eagles"
  When I fill in the email with "fantasytrack1.0@gmail.com"
  And I press "Send Invite"
  Then "fantasytrack1.0@gmail.com" receives an email with "You are invited to a Fantasy Track League"
  And in the mail to "fantasytrack1.0@gmail.com" it says "You have been invited to the Fantasy Track & Field league: eagles"
  
  
  
  
  
  