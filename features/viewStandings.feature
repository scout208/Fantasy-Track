Feature: As league member view league standings
 Background: data has been added to fantasy track
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   tester   | tester@testing.com |  user  |    tester   |
  
  Given the following leagues have been added to FantasyTrack:
  |  league_name       |   pass_code    |    
  |     eagles         |      rose1     | 
  
  Given I am logged in with email of "tester@testing.com" and a password "tester"
  
 Scenario: View League Standings:
   Given I am on the "eagles" homepage
   When I press "Standings"
   Then I should see "League Standings"
   And I will see "1" "" on the row with username "tester"
   
