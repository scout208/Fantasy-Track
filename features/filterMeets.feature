Feature: View Upcoming Meets

Background: The following users have been added to user table
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |     
  |   tester   | tester@testing.com |  user  |    tester   |

  
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date | end_date    |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |
  | Doha Diamond League    |       Doha   |       QAT        | 06/05/2016| 06/05/2016 |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |
  | Eugene Diamond League  |      Eugene  |       USA        | 28/05/2016| 28/05/2016 |
  | Monaco Diamond League  |      Monaco  |       MON        | 15/07/2016| 15/07/2016 |
  | Rome Diamond League    |      Rome    |       ITA        | 02/06/2016| 02/06/2016 |
  | Lausanne Diamond League|      Lausanne|       SUI        | 25/08/2016| 25/08/2016 |
  | Zurich Diamond League  |      Zurich  |       SUI        | 01/09/2016| 01/09/2016 |
  | Brussels Diamond League|      Brussels|       BEL        | 09/09/2016| 09/09/2016 |
  
And I am on the Fantasy-Track home page

Scenario: User Views the upcoming meets
  
Given I am logged in with email of "tester@testing.com" and a password "tester"
When I click "Upcoming Meets"
Then I should see all of the meets

Scenario: User filters meets by location

Given I am logged in with email of "tester@testing.com" and a password "tester"  
And I am on the Upcoming Meets screen
When I click "Location"
Then I should see "Zurich Diamond League" located before "Lausanne Diamond League"

Scenario: User filters meets by start date

Given I am on the Upcoming Meets screen
When I click "Start Date"
Then I should see "Doha Diamond League" located "Monaco Diamond League"

Scenario: User filters meets by end date
  
Given: I am on the Upcoming Meets screen
When I click "End Date"
Then I should see "Doha Diamond League" located before "Monaco Diamond League"
