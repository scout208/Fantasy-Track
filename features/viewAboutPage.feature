
Feature: View About Page

Background: The following users have been added to user table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  |   test2    | test2@testing.com  |  user  |    tester   |
    
  And I am on the Fantasy-Track home page
  
  Scenario: Logged in User views About Page
    Given I am not logged in
    And I click "About"
    Then I should see a title "Hi, we're Fantasy Track"
    
  Scenario: A Logged in User views the About Page
    Given I am logged in with email of "tester@testing.com" and a password "tester"
    And I click "About"
    Then I should see a title "Hi, we're Fantasy Track"
    
