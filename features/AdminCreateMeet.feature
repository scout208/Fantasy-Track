Feature: Create Meet
  
  As an admin
  I want to create a meet with its general information
  So that I can people can see the meet
 
Background: The following data have been added to FantasyTrack
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |
  
   And I am logged in with email of "admin@gmail.com" and a password "password"
   
Scenario: Admin go to create Meet page
  When I am on the Meets screen
  And I click "Create New Meet"
  Then I should be on the view to create new meet
    
Scenario: Admin create Meet page 
  When I am on the view to create new meet
  And I fill in the name of "Rome Diamond League" location_city "Rome" location_country "Italy" start_date "2016-01-01" and end_date "2016-01-01"
  And I press "Save"
  Then I should be on the Meets screen
  And I should see a meet entry with name "Rome Diamond League" location_city "Rome" location_country "Italy" start_date "2016-01-01" and end_date "2016-01-01"