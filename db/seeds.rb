# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    users = [{user_id: 'Admin', email: 'admin@gmail.com', password: 'password', password_confirmation: 'password', role: 'admin',email_confirmed: true},
             {user_id: 'tester', email: 'tester@testing.com', password: 'tester', password_confirmation: 'tester', role: 'user',email_confirmed: true},
             {user_id: 'tester0', email: 'tester0@testing.com', password: 'tester0', password_confirmation: 'tester0', role: 'user',email_confirmed: true},
             ]
             
    athletes = [{first_name: 'Aaron', last_name:'Andrews', birth_date: '01/01/1991',country:'Argentina',notes:'Player A'},
                   {first_name: 'Barry', last_name:'Bonds', birth_date: '02/02/1992',country:'Brazil',notes:'Player B'},
                   {first_name: 'Charlie', last_name:'Chaplin', birth_date: '03/03/1993',country:'China',notes:'Player C'},
                   {first_name: 'Danny', last_name:'DeVito', birth_date: '04/04/1994',country:'Denmark',notes:'Player D'},
                   {first_name: 'Emilio', last_name:'Estevez', birth_date: '05/05/1995',country:'Egypt',notes:'Player E'},
                   {first_name: 'Fred', last_name:'Flintstone', birth_date: '06/06/1996',country:'France',notes:'Player F'},
                   {first_name: 'Greta', last_name:'Garbo', birth_date: '07/07/1997',country:'Germany',notes:'Player G'},
                   {first_name: 'Hugh', last_name:'Hefner', birth_date: '08/08/1998',country:'Hungary',notes:'Player H'},
                    ]
                    
    meets = [{meet_name: 'Doha Diamond League', location_city: 'Doha', location_country: 'QAT', start_date: '06/05/2016', end_date: '06/05/2016'},
           {meet_name: 'Shanghai Diamond League', location_city: 'Shanghai', location_country: 'CHN', start_date: '14/05/2016', end_date: '14/05/2016'},
            {meet_name: 'Eugene Diamond League', location_city: 'Eugene', location_country: 'USA', start_date: '28/05/2016', end_date: '28/05/2016'},
            {meet_name: 'Rome Diamond League', location_city: 'Rome', location_country: 'ITA', start_date: '02/06/2016', end_date: '02/06/2016'},
            {meet_name: 'Birmingham Diamond League', location_city: 'Birmingham', location_country: 'GBR', start_date: '05/06/2016', end_date: '05/06/2016'},
            {meet_name: 'Oslo Diamond League', location_city: 'Oslo', location_country: 'NOR', start_date: '09/06/2016', end_date: '09/06/2016'},
            {meet_name: 'Stockholm Diamond League', location_city: 'Stockholm', location_country: 'SWE', start_date: '16/06/2016', end_date: '16/06/2016'},
            {meet_name: 'New York Diamond League', location_city: 'New York', location_country: 'USA', start_date: '18/06/2016', end_date: '18/06/2016'},
            {meet_name: 'Monaco Diamond League', location_city: 'Monaco', location_country: 'MON', start_date: '15/07/2016', end_date: '15/07/2016'},
            {meet_name: 'London Diamond League', location_city: 'London', location_country: 'GBR', start_date: '22/07/2016', end_date: '23/07/2016'},
            {meet_name: 'Lausanne Diamond League', location_city: 'Lausanne', location_country: 'SUI', start_date: '25/08/2016', end_date: '25/08/2016'},
            {meet_name: 'Paris Diamond League', location_city: 'Paris', location_country: 'FRA', start_date: '27/08/2016', end_date: '27/08/2016'},
            {meet_name: 'Zurich Diamond League', location_city: 'Zurich', location_country: 'SUI', start_date: '01/09/2016', end_date: '01/09/2016'},
            {meet_name: 'Brussels Diamond League', location_city: 'Brussels', location_country: 'BEL', start_date: '09/09/2016', end_date: '09/09/2016'}]
                
    dohaEvents = [{event_name: '100M MEN', event_type: '0'},
                    {event_name: '800M MEN', event_type: '1'},
                    {event_name: '400M HURDLES MEN', event_type: '0'},
                    {event_name: 'TRIPLE JUMP MEN', event_type: '3'},
                    {event_name: 'SHOT PUT MEN', event_type: '2'},
                    {event_name: 'JAVELIN THROW MEN', event_type: '2'},
                    {event_name: '200M WOMEN', event_type: '0'},
                    {event_name: '400M WOMEN', event_type: '0'},
                    {event_name: '1500M WOMEN', event_type: '1'},
                    {event_name: '100M HURDLES WOMEN', event_type: '0'},
                    {event_name: 'HIGH JUMP WOMEN', event_type: '3'},
                    {event_name: 'LONG JUMP WOMEN', event_type: '3'},
                    {event_name: 'DISCUS THROW WOMEN', event_type: '2'}]
    
    athletes.each do |athlete|
        Athlete.create!(athlete)
    end
    
    users.each do |user|
        User.create!(user)
    end
    
    meets.each do |meet|
        Meet.create!(meet)
    end
    
    dohaMeet = Meet.find_by(:meet_name => "Doha Diamond League")
    
    dohaEvents.each do |event|
        dohaMeet.events.create(event)
    end
        
    
    
    
