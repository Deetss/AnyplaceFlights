# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Airport.create([{ code: 'DFW', name: "Dallas/Ft. Worth"} , 
                           { code: 'YUL', name: "Montréal"} ,
                           { code: 'ATL', name: "Atlanta"} ,
                           { code: 'DEN', name: "Denver"} ,
                           { code: 'LAX', name: "Los Angeles"} ,
                           { code: 'AAH	', name: "Aachen"} ,
                           { code: 'PEK', name: "Beijing"} ,
                           { code: 'LHR', name: "London"}
                           ])
                           
Flight.create([ { from_airport_id: 2, to_airport_id: 3, flight_duration: 1, start_time: 1.week.ago },
                { from_airport_id: 3, to_airport_id: 1, flight_duration: 1, start_time: 2.days.ago },
                { from_airport_id: 4, to_airport_id: 6, flight_duration: 1, start_time: 3.weeks.ago },
                { from_airport_id: 8, to_airport_id: 1, flight_duration: 1, start_time: 1.day.from_now },
                { from_airport_id: 7, to_airport_id: 5, flight_duration: 1, start_time: 1.week.from_now }])