# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!(email: 'boutierf@gmail.com', password: 'fannycouccou90')

spacecrafts = Spacecraft.create!([{name: 'Columbia', capacity: 7, category: 'Space Shuttle', location: 'Cape Canaveral', description: 'US Space Shuttle for ISS accostal and Earth orbiting', user: 1}, {name: 'TARDIS', capacity: 7, category: 'Personal spacecraft', location: 'Gallifrey', description: 'The TARDIS is a time machine and spacecraft', user: 1}, {name: 'Millennium Falcon', capacity: 10, category: 'smuggling ship', location: 'Republic City', description: 'The Millennium Falcon was  a light freifhter of the YT-1300f variety.', user: 1}])
