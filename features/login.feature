Feature: Allow user to log in
  
  As a user I want to go to login screen quickly from home screen
  
Background: the users have been added to user table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   | 
  |   Admin    | admin@gmail.com    | admin  |   password  |
  |   tester   | tester@testing.com |  user  |    tester   |
  
  And I am on the Fantasy-Track home page
 
Scenario: User finds login page
  And I press the login button
  Then I should see the view where I am able to login

 
Scenario: Admin User logs in
  When I am on the login screen
  And I added an email of "admin@gmail.com" and a password "password"
  And I press "Log in"
  Then I should be redirected to homepage
  Then I should be signed in as the administrator
  
Scenario: Regular User logs in
  When I am on the login screen
  And I added an email of "tester@testing.com" and a password "tester"
  And I press "Log in"
  Then I should be redirected to homepage
  Then I should be signed in as a user who is not the administrator
  
Scenario: fake User logs in
  When I am on the login screen
  And I added an email of "fake@testing.com" and a password "fake"
  And I press "Log in"
  Then I should see "Invalid email/password combination"