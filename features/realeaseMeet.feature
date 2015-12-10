Feature: releaseMeet
  
 Background: The following meets have been added to the meets table
 
 Given the following meets have been added to FantasyTrack:
  | leagueName | city | country | startDate | endDate |
  | Doha Diamond League |  Doha  | QAT | 15/05/2015  | 15/05/2015 |
  | Doha Diamond League |  Doha  | QAT | 06/05/2016  | 06/05/2016 |
  | Shanghai Diamond League | Shanghai | CHN | 14/05/2016 | 14/05/2016 |
  | Eugene Diamond League | Eugene | USA | 28/05/2016 | 28/05/2016 |
  | Monaco Diamond League | Monaco | MON | 15/07/2016 | 15/07/2016 |
  | Rome Diamond League | Rome | ITA | 02/06/2016 | 02/06/2016 |
  | Lausanne Diamond League | Lausanne | SUI | 25/08/2016 | 25/08/2016 |
  | Zurich Diamond League | Zurich | SUI | 01/09/2016 | 01/09/2016 |
  | Brussels Diamond League | Brussels | BEL | 09/09/2016 | 09/09/2016 |

  And I am logged in with email of "admin@gmail.com" and a password "password" 
  
  Scenario: View Release button
    Given I am on the view meet page for "Shanghai Diamond League"
    Then I should see "Release" button
    And released should say "false"
    
  Scenario: Release the meets
    Given I am on the view meet page for "Shanghai Diamond League"
    And I click "Release"
    Then I should be redirected to meet list
    And I should see "Doha Diamond League"
    And I should see "Shanghai Diamond League"
    
  Scenario: View already released meet
    Given I am on the view meet page for "Shanghai Diamond League"
    And Given "Shanghai Diamond League" has been released
    Then I should see released say "True"
  
  Scenario: Regular user does not see release button
    Given I am logged in with an email of "tester@testing.com" and a password of "tester"
    And Given I am on the meet page for "Monaco Diamond League"
    Then I should see released say "false"
    And I should not see the button "Release"
    
    