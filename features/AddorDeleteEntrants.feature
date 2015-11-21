Feature: Add or remove entrants in Events
  
  Given the following users have been added to FantasyTrack:
  |  user_id   |     email          | role   |  password   |  
  |   Admin    | admin@gmail.com    | admin  |   password  |  

  
  Given the following Meets have been added to FantasyTrack:
  |  meet_name             | location_city| location_country | start_date | end_date  |
  | Doha Diamond League    |       Doha   |       QAT        | 15/05/2015| 15/05/2015 |
  | Shanghai Diamond League|      Shanghai|       CHN        | 14/05/2016| 14/05/2016 |
  | Eugene Diamond League  |      Eugene  |       USA        | 28/05/2016| 28/05/2016 |
  | Monaco Diamond League  |      Monaco  |       MON        | 15/07/2016| 15/07/2016 |
   
  
  Given the following Events have been added to Doha Diamond League Meet:
  |     event_name         |   event_type |   
  |      800M MEN          |       0      |  
  |  400M HURDLES MEN      |       1      |  
  |    TRIPLE JUMP MEN     |       0      | 
  |      SHOT PUT MEN      |       3      |  
  |    JAVELIN THROW MEN   |       2      | 
  
  Given the following athletes have been added to FantasyTrack and thus this event:
   
  |    first_name    |    last_name |   birth_date     |  country  |   notes  |
  |      Barry       |       Bonds  |    02/02/1992    |   Brazil  | Player B |
  |     Charlie      |     Chaplin  |   03/03/1993     |   China   | Player C |
  |       Danny      |     DeVito   |   04/04/1994     |  Denmark  | Player D |
  |       Emilio     |      Eugene  |   05/05/1995     |   Egypt   | Player E |
  |        Fred      |      Monaco  |   06/06/1996     |   France  | Player F |
   
  
  And I am logged in with email of "admin@gmail.com" and a password "password" 
  And I am on the 