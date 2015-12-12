Feature: League Messages
  
  As a user in a league
  I want to view league messages
  So that I can know what's going on around the league.
  
Background: messages have been added to database
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |
  |   tester   | tester@testing.com |  user  |    tester   |
  |   tester2  | tester2@testing.com|  user  |    tester   |
  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |    
  |     eagles         |      rose1     | 
  
  
  Given the following messages have been added to "eagles": 
  | user_id  |     content     |
  |  Admin   | Test message 1  |
  |  Admin   | Test message 2  |
  |  Admin   | Test message 3  |
  |  Admin   | Test message 4  |
   
  
  
  Scenario: See all messages for a league
    Given I am logged in with email of "tester@testing.com" and a password "tester" 
    And I am on the "eagles" homepage
    When  I am on "League Home" of the league
    Then I should see "League Info"
    And I should see "League Creator: tester"
    And I should see "Number of Members: 1" 
    And I should see "Passcode: rose1"
    And I should see "League Messages (4)"
    And  I should see "Admin Test message 1"
    And I should see "Admin Test message 2"
    And I should see "Admin Test message 3"
    And I should see "Admin Test message 4"
    
  Scenario: Create a new message
    Given I am logged in with email of "tester@testing.com" and a password "tester" 
    And I am on the "eagles" homepage
    When I compose a new message with "Test new message"
    And I press "Post"
    Then I should see "tester Test new message"
    
  Scenario: After user joins a league
    Given I am logged in with email of "tester2@testing.com" and a password "tester" 
    And I am on the view to join "eagles"
    When I enter "rose1" as passcode
    And I press "Save"
    And I am on the "eagles" homepage
    And I should see "Number of Members: 2" 
    And I should see "League Messages (5)"
    Then I should see "Admin Welcome tester2 to eagles!"
   