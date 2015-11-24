Feature: Administrator creates new Athlete
 
 Background: The following data have been added to the meets table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  | 
  |  tester    | tester@testing.com | user   |  tester     |

    
  Given the following athletes have been added to FantasyTrack:
  | first_name | last_name | birth_date | country   | notes    |
  | Aaron      | Andrews   | 01/01/1991 | Argentina | Player A |
  | Danny      | DeVito    | 04/04/1994 | Denmark   | Player D |
Scenario: User view athletes table without seeing create option
  When I am logged in with email of "tester@testing.com" and a password "tester"
  And I click "Athletes"
  Then I should be directed to the Athletes Page
  And I should see all the athletes
  And I should not see "Create New Athlete" Link

Scenario: User view Athlete detail
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  And I am on the athlete page 
  When I click "Aaron Andrews"
  Then I should be on the detail page of "Aaron Andrews"
  And I should see "Country: Argentina"
  And I should see "Birth Date: 1991-01-01"
  And I should see "Comments: Player A"
  And I should not see "Edit" Link

Scenario: Admin View Current Athletes with create option
  Given I am logged in with email of "admin@gmail.com" and a password "password"
  And I click "Athletes"
  Then I should be directed to the Athletes Page
  And I should see all the athletes
  And I should see "Create New Athlete"

Scenario: Admin view Athlete detail
  Given I am logged in with email of "admin@gmail.com" and a password "password"
  And I am on the athlete page 
  When I click "Danny DeVito"
  Then I should be on the detail page of "Danny DeVito"
  And I should see "Country: Denmark"
  And I should see "Birth Date: 1994-04-04"
  And I should see "Comments: Player D"
  And I should see "Edit" Link
  