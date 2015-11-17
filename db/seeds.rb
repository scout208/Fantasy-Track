# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    users = [{user_id: 'Admin', email: 'admin@gmail.com', password: 'password', password_confirmation: 'password', role: 'admin'},
             {user_id: 'tester', email: 'tester@testing.com', password: 'tester', password_confirmation: 'tester', role: 'user'},
             {user_id: 'tester0', email: 'tester0@testing.com', password: 'tester0', password_confirmation: 'tester0', role: 'user'},
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
                
    athletes.each do |athlete|
        Athlete.create!(athlete)
    end
    
    users.each do |user|
        User.create!(user)
    end