# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Spacecraft.destroy_all
User.destroy_all

puts "Creating users..."

fanny = {email: 'bof@gmail.com', password: 'fannycouccou90', nickname: 'fafa'}
emilie = {email: 'ed@gmail.com', password: 'emiliejolie', nickname: 'emiliejolie'}
camille = {email: 'ch@gmail.com', password: 'camillelachenille', nickname: 'camillelachenille'}
kirk = {email: 'kirk@gmail.com', password: 'CaptainKirk007', nickname: 'Captain Kirk'}
rick = {email: 'rick@gmail.com', password: 'RickSanchez007', nickname: 'Rick Sanchez'}
henri = {email: 'henri@gmail.com', password: 'HenriBoutier007', nickname: 'Henri Boutier'}

nemo = {email: 'nemo@gmail.com', password: 'CapitaineNemo007', nickname: 'Capitaine Nemo'}

[ fanny, emilie, camille, kirk, rick, henri, nemo ].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end

puts "Creating spacecraft..."

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646209693/Columbia.jpeg_e24gcc.jpg')
columbia = Spacecraft.new(name: 'Columbia', capacity: 7, category: 'Space Shuttle', location: 'Cape Canaveral', description: 'US Space Shuttle for ISS accostal and Earth orbiting', user: User.find_by(email: 'bof@gmail.com'))
columbia.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
columbia.save!
puts "✅ columbia"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1645884048/rick-and-morty-adult-swim-cartoon-gray-wallpaper_zulk97.jpg')
tardis = Spacecraft.new(name: 'TARDIS', capacity: 7, category: 'Personal spacecraft', location: 'Gallifrey', description: 'The TARDIS is a time machine and spacecraft', user: User.find_by(email: 'ed@gmail.com'))
tardis.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
tardis.save!
puts "✅ tardis"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646209996/milennium_falcon_oahxuf.jpg')
millenium_falcon = Spacecraft.new(name: 'Millennium Falcon', capacity: 10, category: 'smuggling ship', location: 'Republic City', description: 'The Millennium Falcon was  a YT-1300 light freifhter of the YT-1300f variety.', user: User.find_by(email: 'ch@gmail.com'))
millenium_falcon.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
millenium_falcon.save!
puts "✅ millenium_falcon"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646210070/uss_entreprise_uzpobq.jpg')
uss_enterprise = Spacecraft.new(name: 'USS Enterprise', capacity: 8, category: 'explorer ship', location: 'Springfield, Massachusetts', description: 'The USS Enterprise (NCC-1701) was a 23rd century Federation Constitution-class starship operated by Starfleet. It was also the first ship to bear the name Enterprise with this registry. Launched in 2245, the ship was commanded by Captain Robert April until 2250, when command of the ship was turned over to April\'s First Officer Christopher Pike.During the Klingon War, the Enterprise and its crew were intentionally left out of the fighting by Starfleet Command as they considered the Enterprise to be the "best of Starfleet" and wanted them to survive.', user: User.find_by(email: 'kirk@gmail.com'))
uss_enterprise.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
uss_enterprise.save!
puts "✅ uss_enterprise"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1645884048/rick-and-morty-adult-swim-cartoon-gray-wallpaper_zulk97.jpg')
space_cruiser = Spacecraft.new(name: 'The Space Cruiser', capacity: 2, category: 'personal spacecraft', location: 'Scranton, Pennsylvanie', description: 'The Space Cruiser is an interdisciplinary vehicle designed and built by engineer-scientist Rick Sanchez with the aim of making space travel an easier and faster task for him.', user: User.find_by(email: 'rick@gmail.com'))
space_cruiser.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
space_cruiser.save!
puts "✅ space_cruiser"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646210272/charles_de_gaulle_n7g4uw.jpg')
charles_de_gaulle = Spacecraft.new(name: 'Charles de Gaulle Aircraft Carrier', capacity: 2500, category: 'aircraft carrier', location: 'Toulon, France', description: 'Charles de Gaulle is the flagship of the French Navy. The ship, commissioned in 2001, is the tenth French aircraft carrier, first French nuclear-powered surface vessel, as well as only nuclear-powered carrier completed outside of the United States Navy.', user: User.find_by(email: 'henri@gmail.com'))
charles_de_gaulle.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
charles_de_gaulle.save!
puts "✅ charles_de_gaulle"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646210338/nautilus_pvgmhz.jpg')
nautilus = Spacecraft.new(name: 'Nautilus', capacity: 20, category: 'explorer ship', location: 'Marianna Trench', description: 'Nautilus is described by Verne as "a masterpiece containing masterpieces".[3] It is designed and commanded by Captain Nemo. Electricity provided by sodium/mercury batteries (with the sodium provided by extraction from seawater) is the craft\'s primary power source for propulsion and other services. The energy needed to extract the sodium is provided by coal mined from the sea floor.', user: User.find_by(email: 'nemo@gmail.com'))
nautilus.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
nautilus.save!
puts "✅ nautilus"

# fanny = {email: 'bof@gmail.com', password: 'fannycouccou90', nickname: 'fafa'}

# [ fanny, emilie, camille, kirk, rick, henri, nemo ].each do |attributes|
#   user = User.create!(attributes)
#   puts "Created #{user.email}"
# end
# Ajouter cloudinary

# [columbia, tardis, millenium_falcon, uss_enterprise, space_cruiser, charles_de_gaulle, nautilus ].each do |attributes|
#   spacecraft = Spacecraft.create!(attributes)
#   puts "Created #{spacecraft.name}"
# end

puts "Finished!"
