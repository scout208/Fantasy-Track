Feature: Create Meet
  
  As an admin
  I want to create a meet with its general information
  So that I can people can see the meet
  
  Scenario: Admin Creates Meet
    When An admin has created a meet with name "Rome Diamond League" and location_city "Rome" and location_country "Italy" and start_date "2016-01-01" and end_date "2016-01-01"
    And I am on the Meets page
    Then I should see a meet entry with name "Rome Diamond League" and location_city "Rome" and location_country "Italy" and start_date "2016-01-01" and end_date "2016-01-01"