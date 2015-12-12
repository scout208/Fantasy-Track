Feature: Allow user to sign up
  
  As a user I want to go to sign up as a new user
  
 
Scenario: User finds sign up page through home page
  When I am on the Fantasy-Track home page
  And I press "Signup"
  Then I should see the view where I am able to sign up
 


Scenario: User finds sign up page through login page
  When I am on the login screen
  When I press "Sign up now!"
  Then I should see the view where I am able to sign up
  
  
Scenario: User sign up
  When I am on the signup page
  And I am fill the fields with username of "testsign"  email of "fantasytrack1.0@gmail.com" password of "password" confirmation password of "password"
  And I press "Sign Up"
  Then I should see "Registration completed! Please confirm your email address."
  And "fantasytrack1.0@gmail.com" receives an email with "Please confirm your registration"
  
  When I click on "Confirm registration" in the email to "fantasytrack1.0@gmail.com"
  Then I should see "Welcome to Fantasy Track and Field! Your account has now been confirmed."