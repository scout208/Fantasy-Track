Feature: League Messages
  
  As a user in a league
  I want to view league messages
  So that I can know what's going on around the league.
  
Background: messages have been added to database
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |
  |     cheetah        |      rose0     |
  
  Given the following messages have been added to Cheetah: 
  | league_id  | user_id  |     content     |
  |     1      |  Admin   | Test message 1  |
  |     1      |  Admin   | Test message 2  |
  |     1      |  Admin   | Test message 3  |
  |     1      |  Admin   | Test message 4  |
  
  Scenario: See all messages for a league
    Given I am logged in as a member of the league
    When I go to the league home page
    Then I should see a list of league messages in order of most recent first
    
  Scenario: Create a new message
    Given I am logged in as a member of the league
    And I am on the league home page
    When I compose a new message
    Then I should see the message at the top of the messages
    
  Scenario: User joins a league
    When a user joins a league
    Given I am logged in as a member of the league
    And I am on the league home page
    Then I should see a message welcoming the user to the league
    