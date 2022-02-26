# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Spacecraft.destroy_all
User.destroy_all

puts "Creating users..."
fanny = {email: 'bof@gmail.com', password: 'fannycouccou90', nickname: 'fafa'}
emilie = {email: 'ed@gmail.com', password: 'emiliejolie', nickname: 'emiliejolie'}
camille = {email: 'ch@gmail.com', password: 'camillelachenille', nickname: 'camillelachenille'}

[ fanny, emilie, camille ].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end

puts "Creating spacecraft..."
columbia = { name: 'Columbia', capacity: 7, category: 'Space Shuttle', location: 'Cape Canaveral', description: 'US Space Shuttle for ISS accostal and Earth orbiting', user: User.find_by(email: 'bof@gmail.com') }

tardis = { name: 'TARDIS', capacity: 7, category: 'Personal spacecraft', location: 'Gallifrey', description: 'The TARDIS is a time machine and spacecraft', user: User.find_by(email: 'ed@gmail.com') }

millenium_falcon = { name: 'Millennium Falcon', capacity: 10, category: 'smuggling ship', location: 'Republic City', description: 'The Millennium Falcon was  a YT-1300 light freifhter of the YT-1300f variety.', user: User.find_by(email: 'ch@gmail.com') }

[ columbia, tardis, millenium_falcon ].each do |attributes|
  spacecraft = Spacecraft.create!(attributes)
  puts "Created #{spacecraft.name}"
end

puts "Finished!"
