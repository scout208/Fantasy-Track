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

  
Scenario: user Join a league
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  When I click "Join League"
  And I clicked "Join" on the row with name of "cheetah"
  Then I should be on the page to enter the league passcode
  
  When I enter "fakepasscode" as passcode
  And I press "Save"
  Then I should be on the page to enter the league passcode
  And I should see "Wrong passcode please re-enter!"
  
  When I enter "rose0" as passcode
  And I press "Save"
  Then I am on the my league page
  And I should see "You have successcully joined cheetah!"
  And I should see "cheetah"
  
  
Scenario: user invit friend
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I created a league with name of "lighting" and passcode of "rose2"
  And I created a league with name of "dasher" and passcode of "rose3"
  When I click "My Leagues"
  And I click "lighting"
  And I click "Invite Friends"
  Then I should be on the page to enter the friend email for "lighting"
  
  When I fill in the email with "fantasytrack1.0@gmail.com"
  And I press "Send Invite"
  Then "fantasytrack1.0@gmail.com" receives an email with "You are invited to a Fantasy Track League"
  And in the mail to "fantasytrack1.0@gmail.com" it says "You have been invited to the Fantasy Track & Field league: lighting"
  
  When I click "My Leagues"
  And I click "dasher"
  And I click "Invite Friends"
  Then I should be on the page to enter the friend email for "lighting"
  When I fill in the email with "fantasytrack1.0@gmail.com"
  And I press "Send Invite"
  Then in the mail to "fantasytrack1.0@gmail.com" it says "You have been invited to the Fantasy Track & Field league: dasher"
  
  
  
  