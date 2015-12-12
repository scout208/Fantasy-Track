Given the following teams apart of the league "eagles"
  | team_name | points |
  | team1 | 100 |
  | team2 | 105 |
  | team3 | 110 |
 Scenario: View League Standings:
   Given I am on the "eagles" homepage
   When I click "Standings" button
   Then I should see the league standings for "eagles" 
   
  
 Scenario: View Correct order of teams
   Given I am on the "Standings" page
   Then I should see "team3" first
   And I should see "team2" second
   And I should see "team3" last
   
   Scenario: Ensuring Correct Points
    Given I am on the "Standings" page
    Then I should see "team3" with "110" points
    And I should see "team2" with "105" points
    And I should see "team1" with "100" points