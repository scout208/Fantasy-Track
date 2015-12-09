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
             {user_id: 'Kevin', email: 'kevin@gmail.com', password: 'password', password_confirmation: 'password', role: 'user', email_confirmed: true},
             {user_id: 'yujhuang', email: 'yujun-huang@uiowa.edu', password: 'myrose', password_confirmation: 'myrose', role: 'user', email_confirmed: true},
             {user_id: 'Connor', email: 'connor@gmail.com', password: 'password', password_confirmation: 'password', role: 'user', email_confirmed: true},
             {user_id: 'Nathan', email: 'nathan@gmail.com', password: 'password', password_confirmation: 'password', role: 'user', email_confirmed: true},
             {user_id: 'Xi', email: 'xi@gmail.com', password: 'password', password_confirmation: 'password', role: 'user', email_confirmed: true},
             {user_id: 'Leon', email: 'leon@gmail.com', password: 'password', password_confirmation: 'password', role: 'user', email_confirmed: true}]

    leagues = [{league_name: 'Cheetah', pass_code: 'rose0'},{league_name: 'Flying Angel', pass_code: 'rose1'},{league_name: 'Eagles', pass_code: 'rose2'},
                {league_name: 'Hawkeye XC', pass_code: 'hawkeye'}]
                
    athletes = [{first_name: 'Aaron', last_name:'Andrews', birth_date: '01/01/1991',country:'Argentina',notes:'Player A'},
                   {first_name: 'Barry', last_name:'Bonds', birth_date: '02/02/1992',country:'Brazil',notes:'Player B'},
                   {first_name: 'Charlie', last_name:'Chaplin', birth_date: '03/03/1993',country:'China',notes:'Player C'},
                   {first_name: 'Danny', last_name:'DeVito', birth_date: '04/04/1994',country:'Denmark',notes:'Player D'},
                   {first_name: 'Emilio', last_name:'Estevez', birth_date: '05/05/1995',country:'Egypt',notes:'Player E'},
                   {first_name: 'Fred', last_name:'Flintstone', birth_date: '06/06/1996',country:'France',notes:'Player F'},
                   {first_name: 'Greta', last_name:'Garbo', birth_date: '07/07/1997',country:'Germany',notes:'Player G'},
                   {first_name: 'Hugh', last_name:'Hefner', birth_date: '08/08/1998',country:'Hungary',notes:'Player H'},
                   {first_name: 'Ben', last_name: 'Witt', birth_date: '08/02/1993', country: 'USA', notes: 'From Iowa'},
                   {first_name: 'Kevin', last_name: 'Lewis', birth_date: '10/07/1993', country: 'USA', notes: 'From Iowa'},
                   {first_name: 'Justin', last_name: 'Gatlin', birth_date: '10/02/1982', country: 'USA', notes: 'Sprinter'},
                   {first_name: 'Michael', last_name: 'Rodgers', birth_date: '24/04/1985', country: 'USA', notes: 'Sprinter'},
                   {first_name: 'Keston', last_name: 'Bledman', birth_date: '08/03/1988', country: 'TTO', notes: 'Sprinter'},
                   {first_name: 'Kim', last_name: 'Collins', birth_date: '05/04/1976', country: 'SKN', notes: 'Sprinter'},
                   {first_name: 'Femi', last_name: 'Ogunode', birth_date: '15/05/1991', country: 'QAT', notes: 'Sprinter'},
                   {first_name: 'Nesta', last_name: 'Carter', birth_date: '10/11/1985', country: 'JAM', notes: 'Sprinter'},
                   {first_name: 'Diondre', last_name: 'Batson', birth_date: '13/07/1992', country: 'USA', notes: 'Sprinter'},
                   {first_name: 'James', last_name: 'Dasaolu', birth_date: '05/09/1987', country: 'GBR', notes: 'Sprinter'},
                   {first_name: 'Ayanleh', last_name: 'Souleiman', birth_date: '03/12/1992', country: 'DJI', notes: 'Mid-D'},
                   {first_name: 'Ferguson Rotich', last_name: 'Cheruiyot', birth_date: '30/11/1989', country: 'KEN', notes: 'Mid-D'},
                   {first_name: 'Alfred', last_name: 'Kipketer', birth_date: '26/12/1996', country: 'KEN', notes: 'Mid-Distance'},
                   {first_name: 'Pierre-Ambroise', last_name: 'Bosse', birth_date: '11/05/1992', country: 'FRA', notes: 'Mid-D'},
                   {first_name: 'Asbel', last_name: 'Kiprop', birth_date: '30/06/1989', country: 'KEN', notes: 'Mid-D'},
                   {first_name: 'Job', last_name: 'Kinyor', birth_date: '08/05/1990', country: 'KEN', notes: 'Mid-D'},
                   {first_name: 'Jeremiah Kipkorir', last_name: 'Mutai', birth_date: '27/12/1992', country: 'KEN', notes: 'Mid-D'},
                   {first_name: 'Musaeb Abdulrahman', last_name: 'Balla', birth_date: '19/03/1989', country: 'QAT', notes: 'Mid-D'},
                   {first_name: 'Mohammed', last_name: 'Aman', birth_date: '10/01/1994', country: 'ETH', notes: 'Mid-D'},
                   {first_name: 'Bram', last_name: 'Som', birth_date: '10/02/1980', country: 'NED', notes: 'Mid-D'},
                   {first_name: 'Bershawn', last_name: 'Jackson', birth_date: '08/05/1983', country: 'USA', notes: 'Hurdles'},
                   {first_name: 'Javier', last_name: 'Culson', birth_date: '25/07/1984', country: 'PUR', notes: 'Hurdles'},
                   {first_name: 'Thomas', last_name: 'Barr', birth_date: '24/07/1992', country: 'IRL', notes: 'Hurdles'},
                   {first_name: 'Jack', last_name: 'Green', birth_date: '06/10/1991', country: 'GBR', notes: 'Hurdles'},
                   {first_name: 'Jeffery', last_name: 'Gibson', birth_date: '15/08/1990', country: 'BAH', notes: 'Hurdles'},
                   {first_name: 'Lj', last_name: 'Van Zyl', birth_date: '20/07/1985', country: 'RUS', notes: 'Hurdles'},
                   {first_name: 'Rasmus', last_name: 'Magi', birth_date: '04/05/1992', country: 'EST', notes: 'Hurdles'},
                   {first_name: 'Felix', last_name: 'Sanchez', birth_date: '30/08/1977', country: 'DOM', notes: 'Hurdles'},
                   {first_name: 'Pedro Pablo', last_name: 'Pichardo', birth_date: '30/06/1993', country: 'CUB', notes: 'Jumper'},
                   {first_name: 'Christian', last_name: 'Taylor', birth_date: '18/06/1990', country: 'USA', notes: 'Jumper'},
                   {first_name: 'Teddy', last_name: 'Tamgho', birth_date: '15/06/1989', country: 'FRA', notes: 'Jumper'},
                   {first_name: 'Alexis', last_name: 'Copello', birth_date: '12/8/1985', country: 'CUB', notes: 'Jumper'},
                   {first_name: 'Nelson', last_name: 'Evora', birth_date: '20/04/1984', country: 'POR', notes: 'Jumper'},
                   {first_name: 'Tosin', last_name: 'Oke', birth_date: '01/10/1980', country: 'NGR', notes: 'Jumper'},
                   {first_name: 'Alexey', last_name: 'Fyodorov', birth_date: '25/05/1991', country: 'RUS', notes: 'Jumper'},
                   {first_name: 'Marian', last_name: 'Oprea', birth_date: '06/06/1982', country: 'ROU', notes: 'Jumper'},
                   {first_name: 'Pablo', last_name: 'Torrijos', birth_date: '21/05/1992', country: 'ESP', notes: 'Jumper'},
                   {first_name: 'David', last_name: 'Storl', birth_date: '27/07/1990', country: 'GER', notes: 'Throws'},
                   {first_name: 'Reese', last_name: 'Hoffa', birth_date: '08/10/1977', country: 'USA', notes: 'Throws'},
                   {first_name: 'Ryan', last_name: 'Whiting', birth_date: '24/11/1986', country: 'USA', notes: 'Throws'},
                   {first_name: 'Joe', last_name: 'Kovacs', birth_date: '28/06/1989', country: 'USA', notes: 'Throws'},
                   {first_name: 'Asmir', last_name: 'Kolasinac', birth_date: '15/10/1984', country: 'SRB', notes: 'Throws'},
                   {first_name: 'Lujan', last_name: 'Lauro', birth_date: '02/05/1984', country: 'ARG', notes: 'Throws'},
                   {first_name: 'Borja', last_name: 'Vivas Jimenez', birth_date: '26/05/1984', country: 'ESP', notes: 'Throws'},
                   {first_name: 'O\'Dayne', last_name: 'Richards', birth_date: '14/12/1988', country: 'JAM', notes: 'Throws'},
                   {first_name: 'Kurt', last_name: 'Roberts', birth_date: '20/02/1988', country: 'USA', notes: 'Throws'},
                   {first_name: 'Tero', last_name: 'Pitkamaki',  birth_date: '19/12/1982', country: 'FIN', notes: 'Throws'},
                   {first_name: 'Antti', last_name: 'Ruuskanen', birth_date: '21/02/1984', country: 'FIN', notes: 'Throws'},
                   {first_name: 'Vitezslav', last_name: 'Vesely', birth_date: '27/02/1983', country: 'CZE', notes: 'Throws'},
                   {first_name: 'Ihab', last_name: 'Abdelrahman', birth_date: '01/05/1989', country: 'EGY', notes: 'Throws'},
                   {first_name: 'Thomas', last_name: 'Rohler', birth_date: '30/09/1991', country: 'GER', notes: 'Throws'},
                   {first_name: 'Julius', last_name: 'Yego', birth_date: '04/01/1989', country: 'KEN', notes: 'Throws'},
                   {first_name: 'Hamish', last_name: 'Peacock', birth_date: '15/10/1990', country: 'AUS', notes: 'Throws'},
                   {first_name: 'Keshorn', last_name: 'Walcott', birth_date: '22/04/1993', country: 'TTO', notes: 'Throws'},
                   {first_name: 'Dmitriy', last_name: 'Tarabin', birth_date: '29/10/1991', country: 'RUS', notes: 'Throws'},
                   {first_name: 'Kim', last_name: 'Amb', birth_date: '31/07/1990', country: 'SWE', notes: 'Throws'},
                   {first_name: 'Allyson', last_name: 'Felix', birth_date: '18/11/1985', country: 'USA', notes: 'Sprints'},
                   {first_name: 'Murielle', last_name: 'Ahoure', birth_date: '23/08/1987', country: 'CIV', notes: 'Sprints'},
                   {first_name: 'Anthonique', last_name: 'Strachan', birth_date: '22/08/1993', country: 'BAH', notes: 'Sprints'},
                   {first_name: 'Tiffany', last_name: 'Townsend', birth_date: '14/06/1989', country: 'USA', notes: 'Sprints'},
                   {first_name: 'Shalonda', last_name: 'Solomon', birth_date: '19/12/1985', country: 'USA', notes: 'Sprints'},
                   {first_name: 'Bianca', last_name: 'Williams', birth_date: '18/12/1993', country: 'GBR', notes: 'Sprints'},
                   {first_name: 'Charonda', last_name: 'Williams', birth_date: '27/03/1987', country: 'USA', notes: 'Sprints'},
                   {first_name: 'Kaylin', last_name: 'Whitney', birth_date: '09/03/1998', country: 'USA', notes: 'Sprints'},
                   {first_name: 'Francena', last_name: 'McCorory', birth_date: '20/10/1988', country: 'USA', notes: 'Sprints'},
                   {first_name: 'Sanya', last_name: 'Richards-Ross', birth_date: '26/02/1985', country: 'USA', notes: 'Sprints'},
                   {first_name: 'Stephenie', last_name: 'McPherson', birth_date: '25/11/1988', country: 'JAM', notes: 'Sprints'},
                   {first_name: 'Novlene', last_name: 'Williams-Mills', birth_date: '26/04/1982', country: 'JAM', notes: 'Sprints'},
                   {first_name: 'Natasha', last_name: 'Hastings', birth_date: '23/07/1986', country: 'USA', notes: 'Sprints'},
                   {first_name: 'Christine', last_name: 'Day', birth_date: '23/08/1986', country: 'JAM', notes: 'Sprints'},
                   {first_name: 'Kabange', last_name: 'Mupopo', birth_date: '21/09/1992', country: 'ZAM', notes: 'Sprints'},
                   {first_name: 'Libania', last_name: 'Grenot', birth_date: '12/07/1983', country: 'ITA', notes: 'Sprints'},
                   {first_name: 'Dawit', last_name: 'Seyaum', birth_date: '27/07/1996', country: 'ETH', notes: 'Mid-D'},
                   {first_name: 'Sifan', last_name: 'Hassan', birth_date: '01/01/1993', country: 'NED', notes: 'Mid-D'},
                   {first_name: 'Senbere', last_name: 'Teferi', birth_date: '03/05/1995', country: 'ETH', notes: 'Mid-D'},
                   {first_name: 'Anna', last_name: 'Mishchenko', birth_date: '25/08/1983', country: 'UKR', notes: 'Mid-D'},
                   {first_name: 'Luiza', last_name: 'Gega', birth_date: '05/11/1988', country: 'ALB', notes: 'Mid-D'},
                   {first_name: 'Axumawit', last_name: 'Embaye', birth_date: '18/10/1994', country: 'ETH', notes: 'Mid-D'},
                   {first_name: 'Abeba', last_name: 'Aregawi', birth_date: '05/07/1990', country: 'SWE', notes: 'Mid-D'},
                   {first_name: 'Rababe', last_name: 'Arafi', birth_date: '12/01/1991', country: 'MAR', notes: 'Mid-D'},
                   {first_name: 'Gudaf', last_name: 'Tsegay', birth_date: '23/01/1997', country: 'ETH', notes: 'Mid-D'},
                   {first_name: 'Malika', last_name: 'Akkaoui', birth_date: '25/12/1987', country: 'MAR', notes: 'Mid-D'},
                   {first_name: 'Selah', last_name: 'Busienei', birth_date: '27/12/1991', country: 'KEN', notes: 'Mid-D'},
                   {first_name: 'Renata', last_name: 'Plis', birth_date: '05/02/1985', country: 'POL', notes: 'Mid-D'},
                   {first_name: 'Siham', last_name: 'Hilali', birth_date: '02/05/1986', country: 'MAR', notes: 'Mid-D'},
                   {first_name: 'Kristina', last_name: 'Ugarova', birth_date: '22/10/1987', country: 'RUS', notes: 'Mid-D'},
                   {first_name: 'Tamara', last_name: 'Tverdostup', birth_date: '17/07/1979', country: 'UKR', notes: 'Mid-D'},
                   {first_name: 'Lydia', last_name: 'Wafula', birth_date: '15/02/1988', country: 'KEN', notes: 'Mid-D'},
                   {first_name: 'Jasmin', last_name: 'Stowers', birth_date: '23/09/1991', country: 'USA', notes: 'Hurdles'},
                   {first_name: 'Sharika', last_name: 'Nelvis', birth_date: '10/05/1990', country: 'USA', notes: 'Hurdles'},
                   {first_name: 'Tiffany', last_name: 'Porter', birth_date: '13/11/1987', country: 'GBR', notes: 'Hurdles'},
                   {first_name: 'Sally', last_name: 'Pearson', birth_date: '19/09/1986', country: 'AUS', notes: 'Hurdles'},
                   {first_name: 'Queen', last_name: 'Harrison', birth_date: '10/09/1988', country: 'USA', notes: 'Hurdles'},
                   {first_name: 'Kristi', last_name: 'Castlin', birth_date: '07/07/1988', country: 'USA', notes: 'Hurdles'},
                   {first_name: 'Tenaya', last_name: 'Jones', birth_date: '22/03/1989', country: 'USA', notes: 'Hurdles'},
                   {first_name: 'Dawn', last_name: 'Harper-Nelson', birth_date: '13/05/1984', country: 'USA', notes: 'Hurdles'},
                   {first_name: 'Airine', last_name: 'Palsyte', birth_date: '13/07/1992', country: 'LTU', notes: 'Jumps'},
                   {first_name: 'Irina', last_name: 'Gordeyeva', birth_date: '09/10/1986', country: 'RUS', notes: 'Jumps'},
                   {first_name: 'Isobel', last_name: 'Pooley', birth_date: '21/12/1992', country: 'GBR', notes: 'Jumps'},
                   {first_name: 'Ana', last_name: 'Simic', birth_date: '05/05/1990', country: 'CRO', notes: 'Jumps'},
                   {first_name: 'Levern', last_name: 'Spencer', birth_date: '23/06/1984', country: 'LCA', notes: 'Jumps'},
                   {first_name: 'Justyna', last_name: 'Kasprzycka', birth_date: '20/08/1987', country: 'POL', notes: 'Jumps'},
                   {first_name: 'Ruth', last_name: 'Beitia', birth_date: '01/04/1979', country: 'ESP', notes: 'Jumps'},
                   {first_name: 'Oksana', last_name: 'Okuneva', birth_date: '14/03/1990', country: 'UKR', notes: 'Jumps'},
                   {first_name: 'Svetlana', last_name: 'Radzivil', birth_date: '17/01/1987', country: 'UZB', notes: 'Jumps'},
                   {first_name: 'Barbara', last_name: 'Szabo', birth_date: '17/02/1990', country: 'HUN', notes: 'Jumps'},
                   {first_name: 'Tianna', last_name: 'Bartoletta', birth_date: '30/08/1985', country: 'USA', notes: 'Jumps'},
                   {first_name: 'Shara', last_name: 'Proctor', birth_date: '16/09/1988', country: 'GBR', notes: 'Jumps'},
                   {first_name: 'Christabel', last_name: 'Nettey', birth_date: '02/06/1991', country: 'CAN', notes: 'Jumps'},
                   {first_name: 'Lorraine', last_name: 'Ugen', birth_date: '22/08/1991', country: 'GBR', notes: 'Jumps'},
                   {first_name: 'Brittney', last_name: 'Reese', birth_date: '09/09/1986', country: 'USA', notes: 'Jumps'},
                   {first_name: 'Ivana', last_name: 'Spanovic', birth_date: '10/05/1990', country: 'SRB', notes: 'Jumps'},
                   {first_name: 'Darya', last_name: 'Klishina', birth_date: '15/01/1991', country: 'RUS', notes: 'Jumps'},
                   {first_name: 'Erica', last_name: 'Jarder', birth_date: '02/04/1986', country: 'SWE', notes: 'Jumps'},
                   {first_name: 'Funmi', last_name: 'Jimoh', birth_date: '29/05/1984', country: 'USA', notes: 'Jumps'},
                   {first_name: 'Melanie', last_name: 'Bauschke', birth_date: '14/07/1988', country: 'GER', notes: 'Jumps'},
                   {first_name: 'Sandra', last_name: 'Perkovic', birth_date: '21/06/1990', country: 'CRO', notes: 'Throws'},
                   {first_name: 'Nadine', last_name: 'Muller', birth_date: '21/11/1985', country: 'GER', notes: 'Throws'},
                   {first_name: 'Dani', last_name: 'Samuels', birth_date: '26/05/1988', country: 'AUS', notes: 'Throws'},
                   {first_name: 'Yekaterina', last_name: 'Strokova', birth_date: '17/12/1989', country: 'RUS', notes: 'Throws'},
                   {first_name: 'Melina', last_name: 'Robert-Michon', birth_date: '18/07/1979', country: 'FRA', notes: 'Throws'},
                   {first_name: 'Zaneta', last_name: 'Glanc', birth_date: '11/03/1983', country: 'POL', notes: 'Throws'},
                   {first_name: 'Gia', last_name: 'Lewis-Smallwood', birth_date: '01/04/1979', country: 'USA', notes: 'Throws'},
                   {first_name: 'Irina', last_name: 'Rodrigues', birth_date: '05/02/1991', country: 'POR', notes: 'Throws'},
                   {first_name: 'Yaimi', last_name: 'Perez', birth_date: '29/05/1991', country: 'CUB', notes: 'Throws'},
                   {first_name: 'Zinaida', last_name: 'Sendriute', birth_date: '20/12/1984', country: 'LTU', notes: 'Throws'}]
                   
                
                    
    meets = [{meet_name: 'Doha Diamond League', location_city: 'Doha', location_country: 'QAT', start_date: '15/05/2015', end_date: '15/05/2015'},
            {meet_name: 'Doha Diamond League', location_city: 'Doha', location_country: 'QAT', start_date: '06/05/2016', end_date: '06/05/2016'},
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
    
    leagues.each do |league|
        League.create!(league)
    end
    
    meets.each do |meet|
        Meet.create!(meet)
    end
    
    dohaMeet = Meet.find_by(:meet_name => "Doha Diamond League")#, :start_date => '15/05/2015')
    
    dohaEvents.each do |event|
        dohaMeet.events.create(event)
    end
    
    m100 = dohaMeet.events.find_by(:event_name => "100M MEN")
    curAthlete = Athlete.find_by(:first_name => "Justin", :last_name => "Gatlin")
    m100.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Michael", :last_name => "Rodgers")
    m100.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Keston", :last_name => "Bledman")
    m100.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Kim", :last_name => "Collins")
    m100.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Femi", :last_name => "Ogunode")
    m100.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Nesta", :last_name => "Carter")
    m100.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Diondre", :last_name => "Batson")
    m100.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "James", :last_name => "Dasaolu")
    m100.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrants100 = m100.active_event_entrants
    
    place = 1
    time = 10.12
    
    entrants100.each do |r|
        if(place == 3)
            m100.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: true, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        elsif(place == 1)
            m100.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: true, nr: false, wr: false)
        else
            m100.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        time = time + 0.07
    end
    
    m800 = dohaMeet.events.find_by(:event_name => "800M MEN")
    curAthlete = Athlete.find_by(:first_name => "Ayanleh", :last_name => "Souleiman")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Ferguson Rotich", :last_name => "Cheruiyot")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Alfred", :last_name => "Kipketer")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Pierre-Ambroise", :last_name => "Bosse")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Asbel", :last_name => "Kiprop")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Job", :last_name => "Kinyor")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Jeremiah Kipkorir", :last_name => "Mutai")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Musaeb Abdulrahman", :last_name => "Balla")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Mohammed", :last_name => "Aman")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Bram", :last_name => "Som")
    m800.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrants800 = m100.active_event_entrants
    place = 1
    time = 105.2
    
    entrants800.each do |r|
        if(place == 3)
            m800.active_mid_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, split_leader: 1, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        elsif(place == 1)
            m800.active_mid_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, split_leader: 1, 
                place: place, time_seconds: time, pr: true, nr: false, wr: false)
        else
            m800.active_mid_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, split_leader: 0, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        time = time + 0.34
    end
    
    m400h = dohaMeet.events.find_by(:event_name => "400M HURDLES MEN")
    curAthlete = Athlete.find_by(:first_name => "Bershawn", :last_name => "Jackson")
    m400h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Javier", :last_name => "Culson")
    m400h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Thomas", :last_name => "Barr")
    m400h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Jack", :last_name => "Green")
    m400h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Jeffery", :last_name => "Gibson")
    m400h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Lj", :last_name => "Van Zyl")
    m400h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Rasmus", :last_name => "Magi")
    m400h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Felix", :last_name => "Sanchez")
    m400h.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrants400h = m100.active_event_entrants
    
    place = 1
    time = 48.98
    
    entrants400h.each do |r|
        if(place == 3)
            m400h.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: true, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        elsif(place == 1)
            m400h.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: true, nr: false, wr: false)
        else
            m400h.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        time = time + 0.33
    end
    
    mtj = dohaMeet.events.find_by(:event_name => "TRIPLE JUMP MEN")
    curAthlete = Athlete.find_by(:first_name => "Pedro Pablo", :last_name => "Pichardo")
    mtj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Christian", :last_name => "Taylor")
    mtj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Teddy", :last_name => "Tamgho")
    mtj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Alexis", :last_name => "Copello")
    mtj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Nelson", :last_name => "Evora")
    mtj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Tosin", :last_name => "Oke")
    mtj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Alexey", :last_name => "Fyodorov")
    mtj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Marian", :last_name => "Oprea")
    mtj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Pablo", :last_name => "Torrijos")
    mtj.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrantstj = mtj.active_event_entrants
    
    place = 1
    distance = 17.08
    
    entrantstj.each do |r|
        if(place == 3)
            mtj.active_jump_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 1, 
                place: place, best_jump: distance, pr: false, nr: false, wr: false)
        elsif(place == 1)
            mtj.active_jump_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 2, 
                place: place, best_jump: distance, pr: true, nr: false, wr: false)
        else
            mtj.active_jump_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 0, 
                place: place, best_jump: distance, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        distance = distance - 0.13
    end
    
    msp = dohaMeet.events.find_by(:event_name => "SHOT PUT MEN")
    curAthlete = Athlete.find_by(:first_name => "David", :last_name => "Storl")
    msp.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Reese", :last_name => "Hoffa")
    msp.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Ryan", :last_name => "Whiting")
    msp.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Joe", :last_name => "Kovacs")
    msp.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Asmir", :last_name => "Kolasinac")
    msp.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Lujan", :last_name => "Lauro")
    msp.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Borja", :last_name => "Vivas Jimenez")
    msp.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "O\'Dayne", :last_name => "Richards")
    msp.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Kurt", :last_name => "Roberts")
    msp.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrantssp = msp.active_event_entrants
    
    place = 1
    distance = 20.58
    
    entrantssp.each do |r|
        if(place == 3)
            msp.active_throw_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 1, 
                place: place, best_throw: distance, pr: false, nr: false, wr: false)
        elsif(place == 1)
            msp.active_throw_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 2, 
                place: place, best_throw: distance, pr: true, nr: false, wr: false)
        else
            msp.active_throw_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 0, 
                place: place, best_throw: distance, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        distance = distance - 0.23
    end
    
    mjt = dohaMeet.events.find_by(:event_name => "JAVELIN THROW MEN")
    curAthlete = Athlete.find_by(:first_name => "Tero", :last_name => "Pitkamaki")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Antti", :last_name => "Ruuskanen")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Vitezslav", :last_name => "Vesely")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Ihab", :last_name => "Abdelrahman")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Thomas", :last_name => "Rohler")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Julius", :last_name => "Yego")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Hamish", :last_name => "Peacock")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Keshorn", :last_name => "Walcott")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Dmitriy", :last_name => "Tarabin")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Kim", :last_name => "Amb")
    mjt.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrantsjt = msp.active_event_entrants
    
    place = 1
    distance = 65.98
    
    entrantsjt.each do |r|
        if(place == 3)
            mjt.active_throw_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 1, 
                place: place, best_throw: distance, pr: false, nr: false, wr: false)
        elsif(place == 1)
            mjt.active_throw_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 2, 
                place: place, best_throw: distance, pr: true, nr: false, wr: false)
        else
            mjt.active_throw_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 0, 
                place: place, best_throw: distance, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        distance = distance - 0.48
    end
    
    w200 = dohaMeet.events.find_by(:event_name => "200M WOMEN")
    curAthlete = Athlete.find_by(:first_name => "Allyson", :last_name => "Felix")
    w200.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Murielle", :last_name => "Ahoure")
    w200.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Anthonique", :last_name => "Strachan")
    w200.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Tiffany", :last_name => "Townsend")
    w200.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Shalonda", :last_name => "Solomon")
    w200.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Bianca", :last_name => "Williams")
    w200.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Charonda", :last_name => "Williams")
    w200.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Kaylin", :last_name => "Whitney")
    w200.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrants200 = w200.active_event_entrants
    
    place = 1
    time = 21.92
    
    entrants200.each do |r|
        if(place == 3)
            w200.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: true, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        elsif(place == 1)
            w200.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: true, nr: false, wr: false)
        else
            w200.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        time = time + 0.13
    end
    
    w400 = dohaMeet.events.find_by(:event_name => "400M WOMEN")
    curAthlete = Athlete.find_by(:first_name => "Francena", :last_name => "McCorory")
    w400.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Sanya", :last_name => "Richards-Ross")
    w400.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Stephenie", :last_name => "McPherson")
    w400.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Novlene", :last_name => "Williams-Mills")
    w400.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Natasha", :last_name => "Hastings")
    w400.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Christine", :last_name => "Day")
    w400.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Kabange", :last_name => "Mupopo")
    w400.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Libania", :last_name => "Grenot")
    w400.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrants400 = w400.active_event_entrants
    
    place = 1
    time = 50.03
    
    entrants400.each do |r|
        if(place == 3)
            w400.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: true, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        elsif(place == 1)
            w400.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: true, nr: false, wr: false)
        else
            w400.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        time = time + 0.18
    end
    
    w1500 = dohaMeet.events.find_by(:event_name => "1500M WOMEN")
    curAthlete = Athlete.find_by(:first_name => "Sifan", :last_name => "Hassan")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Senbere", :last_name => "Teferi")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Anna", :last_name => "Mishchenko")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Luiza", :last_name => "Gega")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Axumawit", :last_name => "Embaye")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Abeba", :last_name => "Aregawi")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Rababe", :last_name => "Arafi")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Gudaf", :last_name => "Tsegay")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Malika", :last_name => "Akkaoui")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Selah", :last_name => "Busienei")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Renata", :last_name => "Plis")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Siham", :last_name => "Hilali")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Kristina", :last_name => "Ugarova")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Tamara", :last_name => "Tverdostup")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Lydia", :last_name => "Wafula")
    w1500.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrants1500 = w1500.active_event_entrants
    place = 1
    time = 241.24
    
    entrants1500.each do |r|
        if(place == 3)
            w1500.active_mid_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, split_leader: 1, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        elsif(place == 1)
            w1500.active_mid_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, split_leader: 2, 
                place: place, time_seconds: time, pr: true, nr: false, wr: false)
        else
            w1500.active_mid_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, split_leader: 0, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        time = time + 0.84
    end
    
    w100h = dohaMeet.events.find_by(:event_name => "100M HURDLES WOMEN")
    curAthlete = Athlete.find_by(:first_name => "Jasmin", :last_name => "Stowers")
    w100h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Sharika", :last_name => "Nelvis")
    w100h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Tiffany", :last_name => "Porter")
    w100h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Sally", :last_name => "Pearson")
    w100h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Queen", :last_name => "Harrison")
    w100h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Kristi", :last_name => "Castlin")
    w100h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Tenaya", :last_name => "Jones")
    w100h.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Dawn", :last_name => "Harper-Nelson")
    w100h.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrants100h = w100h.active_event_entrants
    
    place = 1
    time = 12.23
    
    entrants100h.each do |r|
        if(place == 3)
            w100h.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: true, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        elsif(place == 1)
            w100h.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: true, nr: false, wr: false)
        else
            w100h.active_sprint_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, fastest_start: false, 
                place: place, time_seconds: time, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        time = time + 0.12
    end
    
    whj = dohaMeet.events.find_by(:event_name => "HIGH JUMP WOMEN")
    curAthlete = Athlete.find_by(:first_name => "Airine", :last_name => "Palsyte")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Irina", :last_name => "Gordeyeva")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Isobel", :last_name => "Pooley")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Ana", :last_name => "Simic")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Levern", :last_name => "Spencer")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Justyna", :last_name => "Kasprzycka")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Ruth", :last_name => "Beitia")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Oksana", :last_name => "Okuneva")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Svetlana", :last_name => "Radzivil")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Barbara", :last_name => "Szabo")
    whj.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrantshj = whj.active_event_entrants
    
    place = 1
    distance = 1.92
    
    entrantshj.each do |r|
        if(place == 3)
            whj.active_jump_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 1, 
                place: place, best_jump: distance, pr: false, nr: false, wr: false)
        elsif(place == 1)
            whj.active_jump_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 2, 
                place: place, best_jump: distance, pr: true, nr: false, wr: false)
        else
            whj.active_jump_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 0, 
                place: place, best_jump: distance, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        distance = distance - 0.06
    end
    
    wlj = dohaMeet.events.find_by(:event_name => "LONG JUMP WOMEN")
    curAthlete = Athlete.find_by(:first_name => "Tianna", :last_name => "Bartoletta")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Shara", :last_name => "Proctor")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Christabel", :last_name => "Nettey")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Lorraine", :last_name => "Ugen")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Brittney", :last_name => "Reese")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Ivana", :last_name => "Spanovic")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Darya", :last_name => "Klishina")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Erica", :last_name => "Jarder")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Funmi", :last_name => "Jimoh")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Melanie", :last_name => "Bauschke")
    wlj.active_event_entrants.create(:athlete_id => curAthlete.id)
    
    entrantslj = wlj.active_event_entrants
    
    place = 1
    distance = 6.25
    
    entrantslj.each do |r|
        if(place == 3)
            wlj.active_jump_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 1, 
                place: place, best_jump: distance, pr: false, nr: false, wr: false)
        elsif(place == 1)
            wlj.active_jump_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 2, 
                place: place, best_jump: distance, pr: true, nr: false, wr: false)
        else
            wlj.active_jump_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 0, 
                place: place, best_jump: distance, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        distance = distance - 0.13
    end
    
    wdt = dohaMeet.events.find_by(:event_name => "DISCUS THROW WOMEN")
    curAthlete = Athlete.find_by(:first_name => "Sandra", :last_name => "Perkovic")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Nadine", :last_name => "Muller")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Dani", :last_name => "Samuels")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Yekaterina", :last_name => "Strokova")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Melina", :last_name => "Robert-Michon")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Zaneta", :last_name => "Glanc")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Gia", :last_name => "Lewis-Smallwood")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Irina", :last_name => "Rodrigues")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Yaimi", :last_name => "Perez")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
    curAthlete = Athlete.find_by(:first_name => "Zinaida", :last_name => "Sendriute")
    wdt.active_event_entrants.create(:athlete_id => curAthlete.id)
                
    entrantsdt = wdt.active_event_entrants
    
    place = 1
    distance = 57.91
    
    entrantsdt.each do |r|
        if(place == 3)
            wdt.active_throw_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 1, 
                place: place, best_throw: distance, pr: false, nr: false, wr: false)
        elsif(place == 1)
            wdt.active_throw_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 2, 
                place: place, best_throw: distance, pr: true, nr: false, wr: false)
        else
            wdt.active_throw_results.create!(event_id: r.event_id, athlete_id: r.athlete_id, best_of_round: 0, 
                place: place, best_throw: distance, pr: false, nr: false, wr: false)
        end
        
        place = place + 1
        distance = distance - 0.48
    end
                
    kevin = User.find_by(:user_id => "Kevin")
    leon = User.find_by(:user_id => "Leon")
    connor = User.find_by(:user_id => "Connor")
    xi = User.find_by(:user_id => "Xi")
    nathan = User.find_by(:user_id => "Nathan")
    
    hawkeyeXC = League.find_by(:league_name => "Hawkeye XC")
    hawkeyeXC.update_attribute(:creator_id, kevin.id)
    
    settings = hawkeyeXC.league_settings.build(league_id: @league_id, standard_scoring: true, pr_bonus: true, wr_bonus: true,
                nr_bonus: true, fastest_start_bonus: true, split_leader_bonus: true, best_of_round_bonus: true, 
                athlete_select_option: "1")
    settings.save
    
    LeagueMember.create!(league_id: hawkeyeXC.id, user_id: kevin.id)
    LeagueMember.create!(league_id: hawkeyeXC.id, user_id: leon.id)
    LeagueMember.create!(league_id: hawkeyeXC.id, user_id: connor.id)
    LeagueMember.create!(league_id: hawkeyeXC.id, user_id: xi.id)
    LeagueMember.create!(league_id: hawkeyeXC.id, user_id: nathan.id)
            
    leagues = League.order(:id).take(6)
    5.times do
        content = Faker::Lorem.sentence(5)
        leagues.each { |league| league.league_messages.create!(user_id: 1, content: content) }
    end