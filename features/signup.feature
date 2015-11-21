Feature: Allow user to sign up
  
  As a user I want to go to sign up as a new user
  
 
Scenario: User finds sign up page through home page
  When I am on the Fantasy-Track home page
  And I press "Sign up Today !"
  Then I should see the view where I am able to sign up
 


Scenario: User finds sign up page through login page
  When I am on the login screen
  When I press "Sign up now!"
  Then I should see the view where I am able to sign up
  
  
Scenario: User sign up with specified
  When I am on the Fantasy-Track home page
  And I press "Sign up Today !"
  Then I should see the view where I am able to sign up