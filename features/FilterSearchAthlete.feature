Feature: Administrator creates new Athlete
 
 Background: The following data have been added to the meets table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  | 
  |  tester    | tester@testing.com | user   |  tester     |

    
  Given the following athletes have been added to FantasyTrack:
  | first_name | last_name | birth_date | country   | notes    |
  | Aaron      | Andrews   | 01/01/1991 | Argentina | Player A |
  | Barry      | Bonds     | 02/02/1992 | Brazil    | Player B |
  | Charlie    | Chaplin   | 03/03/1993 | China     | Player C |
  | Danny      | DeVito    | 04/04/1994 | Denmark   | Player D |
  | Fred       | Flintstone| 06/06/1996 | France    | Player F |


  Scenario: USer Search for an athlete
   Given I am logged in with email of "tester@gmail.com" and a password "tester"
   And I am on the athlete page
   Then I should see the search box
   
   When I fill the search box with "Barry Bonds"
   Then the current view should be rendered to only see athlete "Barry Bonds"
 
 Scenario: User Sort Athletes by Country
   Given I am logged in with email of "tester@gmail.com" and a password "tester"
   And I am on the athlete page
   And I click "Country" 
   Then I should see "Aaron Andrews" located first in the table
   And I should see "Fred Flinstone" located last in the table
   
 Scenario: Admin Search for an athlete
   Given I am logged in with email of "admin@gmail.com" and a password "password"
   And I am on the athlete page
   Then I should see the search box
   
   When I fill the search box with "Barry Bonds"
   Then the current view should be rendered to only see athlete "Barry Bonds"
 
 Scenario: Admin Sort Athletes by Country
   Given I am logged in with email of "admin@gmail.com" and a password "password"
   And I am on the athlete page
   And I click "Country" 
   Then I should see "Aaron Andrews" located first in the table
   And I should see "Fred Flinstone" located last in the table

