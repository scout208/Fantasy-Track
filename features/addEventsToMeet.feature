Feature: Add Events to Meet
  
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
 
 Given the following events have been added to FantasyTrack for the Eugene Diamond League
  | event_name | event_type |
  | 100M MEN | 0 |
  | 400M HURDLES MEN | 0 |
  | TIPLE JUMP MEN | 3 |


Scenario: View Events for a meets
  Given I am on the meets page
  And I click Eugene Diamond League
  Then I should see "100 MEN"
  And I should see "TRIPLE JUMP MEN"

Scenario: View Meet with No Events added
  Given I am on the meets page
  And I clikc "Shanghai Diamond Meet"
  Then I should see an empty table
  
Scenario: View Enter New Event Screen
  Given I am on the meets page
  And I click "Eugene Diamond League"
  Then I click "Create New Event"
  Then I should be directed to enter a new event page

Scenario: Create new Event
  Given I am on the create new event page for the "Eugene Diamond Meet"
  And I fill in event name with "SHOT PUT MEN"
  And I fill Event type with "2"
  And I click "Save"
  Then I should be redirected back to the screen for the "Eugene Diamond Meet"
  And I shoud see "SHOT PUT MEN"
  
   