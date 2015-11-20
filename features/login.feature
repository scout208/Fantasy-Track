Feature: Allow user to log in
 
Scenario: User finds login page
  Given I am on the Fantasy-Track home page 
  And I press the login button
  Then I should see the view where I am able to login
 
Scenario: Admin User logs in
  When I am on the login screen
  And I added an email of "admin@gmail.com" and a password "password"
  And I press "login"
  Then I should be signed in as the administrator
  
Scenario: Regular User logs in
  When I am on the login screen
  And I added an email of "nathanpierotti@gmail.com" and a password "npierotti"
  And I press "login"
  Then I should be signed in as a user who is not the administrator