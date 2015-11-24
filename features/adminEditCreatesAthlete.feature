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

Scenario: User view athletes table without seeing create option
  When I am logged in with email of "tester@testing.com" and a password "tester"
  And I click "Athletes"
  Then I should be directed to the Athletes Page
  And I should see all the athletes
  And I should not see "Create New Athlete" Link

Scenario: Admin View Current Athletes with create option
  Given I am logged in with email of "admin@gmail.com" and a password "password"
  And I click "Athletes"
  Then I should be directed to the Athletes Page
  And I should see all the athletes
  And I should see "Create New Athlete"
  
 Scenario: Admin View Create Athlete Page
   Given I am logged in with email of "admin@gmail.com" and a password "password"
   When I click "Athletes"
   And I click "Create New Athlete"
   Then I should be on the view to Create New Athlete

 Scenario: Admin Create a New Athlete
   Given I am logged in with email of "admin@gmail.com" and a password "password"
   And I am on the view to create athlete
   When I fill in first name with "Ana" last name with "Simic" country with "Croatia" birthdate with "1983-08-25" and notes with "Player E"
   And I press "Save"
   Then I should be directed to the Athletes Page
   And I will see "Ana Simic" with country "Croatia" and birthdate with "1983-08-25"

 Scenario: Admin edit a athlete
   Given I am logged in with email of "admin@gmail.com" and a password "password"
   And I am on the athlete page
   Then I should see "Barry Bonds"
   
   When I click on "Delete" For athlete "Barry Bonds
   Then I should be directed to the Athletes Page
   And I should not see "Barry Bonds"
   
 Scenario: Search for an athlete
   Given I am logged in with email of "admin@gmail.com" and a password "password"
   And I am on the athlete page
   Then I should see the search box
   
   When I fill the search box with "Barry Bonds"
   Then the current view should be rendered to only see athlete "Barry Bonds"
 
 Scenario: Sort Athletes by Country
   Given I am logged in with email of "admin@gmail.com" and a password "password"
   And I am on the athlete page
   And I click "Country" 
   Then I should see "Aaron Andrews" located first in the table
   And I should see "Fred Flinstone" located last in the table

 Scenario: Delete an Athlete
   Given I am logged in with email of "admin@gmail.com" and a password "password"
   And I am on the athlete page
   When I click on "Delete" For athlete "Barry Bonds"
   Then I should not see "Barry Bonds" in the table
   
