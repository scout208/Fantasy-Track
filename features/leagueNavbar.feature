Feature: navbar
  
  Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  |   tester2  | tester2@testing.com|  user  |    tester2  |

  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |    
  |     cheetah        |      rose0     |    
  |     eagles         |      rose1     |   
  Given I am logged in with email of "tester@testing.com" and a password "tester" 
  And I am on the "eagles" homepage
  
  Scenario: View NavBar on league homepage
    Given  I am on "League Home" of the league
    Then I should see "Welcome to eagles"
    And The second nav bar should have "League Home" "My Team" "Standings" "Scoreboard" "League Settings" and "Invite Friends"
    
  Scenario: View NavBar on league My Team
    Given  I am on "My Team" of the league
    Then I should see "League: eagles"
    And The second nav bar should have "League Home" "My Team" "Standings" "Scoreboard" "League Settings" and "Invite Friends"
    
  Scenario: View NavBar on league Standings
    Given  I am on "Standings" of the league
    Then I should see "League: eagles"
    And The second nav bar should have "League Home" "My Team" "Standings" "Scoreboard" "League Settings" and "Invite Friends"
    
  Scenario: View NavBar on league Scoreboard
    Given  I am on "Scoreboard" of the league
    Then I should see "League: eagles"
    And The second nav bar should have "League Home" "My Team" "Standings" "Scoreboard" "League Settings" and "Invite Friends"
    
  Scenario: View NavBar on league League Settings
    Given  I am on "League Settings" of the league
    Then I should see "League: eagles"
    And The second nav bar should have "League Home" "My Team" "Standings" "Scoreboard" "League Settings" and "Invite Friends"
    
  Scenario: View NavBar on league Invite Friends
    Given  I am on "Invite Friends" of the league
    Then I should see "League: eagles"
    And The second nav bar should have "League Home" "My Team" "Standings" "Scoreboard" "League Settings" and "Invite Friends"
