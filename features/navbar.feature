Feature: navbar
  
  Scenario: View NavBar
    Given I am logged in with email of "tester@testing.com" and a password "tester"
    And Given I am apart of the league "eagles"
    When I Am on my league homepage
    Then I should see a Navgiation Bar with button "My Team"
    And I should see a button "Standings"
    And I should see a button "Scoreboard"
