Feature: Administrator creates new Athlete
 
 Background: The following data have been added to the meets table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  | 

    
  Given the following athletes have been added to FantasyTrack:
  | first_name | last_name | birth_date | country   | notes    |
  | Aaron      | Andrews   | 01/01/1991 | Argentina | Player A |
  | Barry      | Bonds     | 02/02/1992 | Brazil    | Player B |

  And I am logged in with email of "admin@gmail.com" and a password "password"
  

 Scenario: before Admin edit a athlete
   Given I am on the athlete page
   Then I will see "Barry Bonds" with country "Brazil" and birthdate with "1992-02-02" 
   
   When I click "Barry Bonds"
   Then I should be on the detail page of "Barry Bonds"
   And I should see "Birth Date: 1992-02-02"
   And I should see "Comments: Player B"
   
 Scenario: Admin edit a athlete
   Given I am on the athlete detail page of "Barry Bonds"
   When I click "Edit"
   Then I should be on the view to edit detail with "Barry" "Bonds" "Brazil" "1992-02-02" "Player B"
   
   When I change birthdate into "1992-10-02"  and notes with "Player A"
   And I press "Save Changes"
   Then I should be on the detail page of "Barry Bonds"
   And I should see "Barry Bonds was successfully updated."
   And I should see "Birth Date: 1992-10-02"
   And I should see "Comments: Player A"
   
   When I am on the athlete page
   Then I will see "Barry Bonds" with country "Brazil" and birthdate with "1992-10-02"