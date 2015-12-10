Feature: View League Standings
  As a user on my league page
  I want to see the league standings
  So I can see who is winning
  
  Scenario: View standings
    Given I am logged in as a member of the league
    When I go to the standings page
    Then I should see a list of the standings for that league