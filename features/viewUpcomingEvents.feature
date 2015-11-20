Feature: View Upcoming Meets

Background: The following users have been added to user table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |
  |   test2    | test2@testing.com  |  user  |    tester   |
  
And I am on the Fantasy-Track home page

Scenario: User Views the upcoming meets
  
Given: I am logged in with email of "tester@testing.com" and a password "tester"
When I click "Upcoming Meets"
Then I should see "Birmingham Diamond League" located first in the table
And I should see "Oslo Diamond League" located last in the table

Scenario: User filters meets by location
  
Given: I am on the Upcoming Meets screen
And: I click "Location"
Then: I should see "Zurich Diamond League" located first in the table
And I should see "Lausanne Diamond League" lcoated last in the table

