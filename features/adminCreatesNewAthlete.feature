Feature: Administrator creates new Athlete
    
Background: The following athletes have been added to the athletes tables
  | first_name | last_name | birth_date | country | notes |
  | Aaron | Andrews | 01/01/1991 | Argentina | Player A |
  | Barry | Bonds | 02/02/1992 | Brazil | Player B |
  | Charlie | Chaplin | 03/03/1993 | China | Player C |
  | Danny | DeVito | 04/04/1994 | Denmark | Player D |
  | Emilio | Estevez | 05/05/1995 | Egypt | Player E |
  | Fred | Flintstone | 06/06/1996 | France | Player F |

And I am on the FantasyTrack Homepage

Scenario: View Current Athletes
  Given I am on the FantasyTrack homepage
  And I click "Athletes"
  Then I should be directed to the Athletes Page
  And I should see "Aaron Andrews"
  
 Scenario: View Create Athlete Page
   Given I am on the athletes page
   And I click "Create New Athlete"
   Then I should be directed to Create New Athlete page
   Then I should see title "Enter Athlete Details"

 Scenario: Create a New Athlete
   Given I am on the create new athlete page
   And I fill in first name with "Ana"
   And I fill last name with "Simic"
   And I fill country with "Croatia"
   And I fill birthdate with "1983-08-25"
   And I click "Save"
   Then I should be redirected to the athletes page
   And I should see "Ana Simic" In the athletes tables
   
 Scenario: Search for an athlete
   Given I am on the athletes page
   And I fill the search box with "Barry Bonds"
   Then the current view should be rendered to only see athlete "Barry Bonds"
 
 Scenario: Sort Athletes by Country
   Given I am on the athlete page
   And I click "Country" 
   Then I should see "Aaron Andrews" located first in the table
   And I should see "Fred Flinstone" located last in the table

 Scenario: Delete an Athlete
   Given I am on the athlete page
   And I click "Delete" For athlete "Barry Bonds"
   Then I should not see "Barry Bonds" in the table
   
