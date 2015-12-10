Feature: View League Standings
  As a user on my league page
  I want to see the league standings
  So I can see who is winning
  
  Background: messages have been added to database
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |
  |     cheetah        |      rose0     |
  
  Scenario: View standings
    Given I am logged in as a member of the league
    When I go to the standings page
    Then I should see a list of the standings for that league