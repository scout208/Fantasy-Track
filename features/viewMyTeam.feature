Feature: viewMyTeam
  
 Background: The following meets have been added to the meets table
 
 Given the following meets have been added to FantasyTrack:
  | leagueName | city | country | startDate | endDate |
  | Doha Diamond League |  Doha  | QAT | 15/05/2015  | 15/05/2015 |

 And I am logged in with email of "tester@testing.com" and a password "tester"
 
 Scenario: View released meets:
   Given "Doha Diamond League" has been released
   And I am on the my team page
   Then I should see "Doha Diamond League"
   And I should not see "Brussels Diamond League"
   
 Scenario: View My team
   Given "Doha Diamond League" has been released
   And I am on the my team page
   And I click "Doha Diamond League"
   Then I should see "100 MEN"
   And I should see "TRIPLE JUMP MEN"
   
 