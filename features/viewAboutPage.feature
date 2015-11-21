
Feature: View About Page

Background: The following users have been added to user table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
    
  And I am on the Fantasy-Track home page
  
  Scenario: Logged in User views About Page
    Given I am not logged in
    And I click "About"
    Then I should see "Hi, we're FantasyTrack"
    And I should see "Meet the Team"
    And I should see "Yujun Huang"
    
  Scenario: A Logged in User views the About Page
    Given I am logged in with email of "tester@testing.com" and a password "tester"
    And I click "About"
    Then I should see "Hi, we're FantasyTrack"
    And I should see "Meet the members"
    And I should see "Connor Early"
    
  Scenario: A Logged in Admin views the About Page
    Given I am logged in with email of "admin@gmail.com" and a password "password"
    And I click "About"
    Then I should see "Hi, we're FantasyTrack"
    And I should see "Test About Video"
    And I should see "Nate Pierotti"
