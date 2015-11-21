Feature: Delete Meet
  
  As an admin
  I want to delete a meet with its general information
  So that I can remove a meet if needed
  
  Scenario: Admin Deletes Meet
    Given An admin has created a meet with name "Rome Diamond League" and location_city "Rome" and location_country "Italy" and start_date "2016-01-01" and end_date "2016-01-01"
    And I have visited the "Rome Diamond Leauge" meet details page
    
    When I have clicked the "Delete" button
    And I am on the Meets page
    Then I should no longer see a meet with name "Rome Diamond League" and location_city "Rome" and location_country "Italy" and start_date "2016-01-01" and end_date "2016-01-01"