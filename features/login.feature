Feature: Allow user to log in
  
  As a user I want to go to login screen quickly from home screen
  
Background: the users have been added to user table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  |   test2    | test2@testing.com  |  user  |    tester   |
  
  And I am on the Fantasy-Track home page
 
Scenario: User finds login page
  When I see the "Home" "About" "Login" and "Signup" options on menu
  And I press "Login"
  Then I should see the view where I am able to login

 
Scenario: Admin User logs in
  When I am on the login screen
  And I added an email of "admin@gmail.com" and a password "password"
  And I press "Log in"
  Then I should be redirected to homepage without seeing "Signup" and "Log in" Button
  And I should be signed in as the administrator
  And I will have "Admin" "Meets" and "Athletes" on the menu
  
Scenario: Admin view nav bar on about page
  Given I am logged in with email of "admin@gmail.com" and a password "password"
  When I press "About"
  Then I will have "Admin" "Meets" and "Athletes" on the menu  
  
Scenario: Admin view nav bar on Meets page
  Given I am logged in with email of "admin@gmail.com" and a password "password"
  When I press "Meets"
  Then I will have "Admin" "Meets" and "Athletes" on the menu 
  
Scenario: Admin view nav bar on Athletes page
  Given I am logged in with email of "admin@gmail.com" and a password "password"
  When I press "Athletes"
  Then I will have "Admin" "Meets" and "Athletes" on the menu 

  
Scenario: Regular User logs in
  When I am on the login screen
  And I added an email of "tester@testing.com" and a password "tester"
  And I press "Log in"
  Then I should be redirected to homepage without seeing "Signup" and "Log in" Button
  And I should be signed in as a user who is not the administrator
  And I should have "tester" "My Leagues" "Athletes" "Join League" and "Upcoming Meets" on the menu
  
Scenario: Admin view nav bar on about page
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  When I press "About"
  Then I should have "tester" "My Leagues" "Athletes" "Join League" and "Upcoming Meets" on the menu  
  
Scenario: Admin view nav bar on My leagues page
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  When I press "My Leagues"
  Then I should have "tester" "My Leagues" "Athletes" "Join League" and "Upcoming Meets" on the menu 
  
Scenario: Admin view nav bar on Athletes page
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  When I press "Athletes"
  Then I should have "tester" "My Leagues" "Athletes" "Join League" and "Upcoming Meets" on the menu   
  
Scenario: Admin view nav bar on Join League page
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  When I press "Join League"
  Then I should have "tester" "My Leagues" "Athletes" "Join League" and "Upcoming Meets" on the menu  
  
Scenario: Admin view nav bar on Upcomming Meets page
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  When I press "Upcoming Meets"
  Then I should have "tester" "My Leagues" "Athletes" "Join League" and "Upcoming Meets" on the menu 
  
  
Scenario: unactivated User try to log in
  When I am on the login screen
  And I added an email of "test2@testing.com" and a password "tester"
  And I press "Log in"
  Then I should see "Please activate your account in email"
  
Scenario: fake User try to log in
  When I am on the login screen
  And I added an email of "fake@testing.com" and a password "fake"
  And I press "Log in"
  Then I should see "Invalid email/password combination"