Feature: Administrator creates new Athlete
 
 Background: The following data have been added to the meets table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  | 

    
  Given the following athletes have been added to FantasyTrack:
  | first_name | last_name | birth_date | country   | notes    |
  | Barry      | Bonds     | 02/02/1992 | Brazil    | Player B |

  And I am logged in with email of "admin@gmail.com" and a password "password"
  
 Scenario: Admin View Create Athlete Page
   When I click "Athletes"
   And I click "Create New Athlete"
   Then I should be on the view to Create New Athlete

 Scenario: Admin Create a New Athlete
   Given I am on the view to create athlete
   When I fill in first name with "Ana" last name with "Simic" country with "Croatia" birthdate with "1983-08-25" and notes with "Player E"
   And I press "Save"
   Then I should be directed to the Athletes Page
   And I should see "Ana Simic successcully created."
   And I will see "Ana Simic" with country "Croatia" and birthdate with "1983-08-25"
   
   
 Scenario: Delete an Athlete
   Given I am logged in with email of "admin@gmail.com" and a password "password"
   And I am on the athlete page
   Then I should see "Barry Bonds"
   
   When I click on "Delete" for athlete "Barry Bonds"
   Then I should be directed to the Athletes Page
   And I should not see "Barry Bonds"
   