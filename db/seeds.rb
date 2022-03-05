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
john = {email: 'john@gmail.com', password: '123456', nickname: 'John Young'}
doctor = {email: 'doctor@gmail.com', password: '123456', nickname: 'The Doctor'}
han = {email: 'han@gmail.com', password: '123456', nickname: 'Han Solo'}
yuri = {email: 'yuri@gmail.com', password: '123456', nickname: 'Yuri Gagarine'}

nemo = {email: 'nemo@gmail.com', password: 'CapitaineNemo007', nickname: 'Capitaine Nemo'}

[ fanny, emilie, camille, kirk, rick, henri, nemo, john, doctor, han, yuri ].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end

puts "Creating spacecraft..."

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646209693/Columbia.jpeg_e24gcc.jpg')
columbia = Spacecraft.new(name: 'Columbia', capacity: 7, category: 'Space Shuttle', location: 'Cape Canaveral', description: 'US Space Shuttle for ISS accostal and Earth orbiting: Space Shuttle Columbia (OV-102) is a Space Shuttle orbiter manufactured by Rockwell International and operated by NASA. Named after the first American ship to circumnavigate the upper North American Pacific coast and the female personification of the United States, Columbia is the first of five Space Shuttle orbiters to fly in space, debuting the Space Shuttle launch vehicle on its maiden flight in April 1981. As only the second full-scale orbiter to be manufactured after the Approach and Landing Test vehicle Enterprise, Columbia retains unique features indicative of its experimental design compared to later orbiters, such as test instrumentation and distinctive black chines.', user: User.find_by(email: 'john@gmail.com'))
columbia.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
columbia.save!
puts "✅ columbia"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1645884058/tardis-doctor-who_kurwpl.webp')
tardis = Spacecraft.new(name: 'TARDIS', capacity: 7, category: 'Personal Spacecraft', location: 'Gallifrey', description: 'The TARDIS "Time And Relative Dimension In Space" is a time machine and spacecraft that appears in the British science fiction television series Doctor Who and its various spin-offs. Doctor Who has become so much a part of British popular culture that the shape of the police box has become associated with the TARDIS much more than with its real-world inspiration.', user: User.find_by(email: 'doctor@gmail.com'))
tardis.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
tardis.save!
puts "✅ tardis"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646471758/Millennium-Falcon-header1_hudoly.jpg')
millenium_falcon = Spacecraft.new(name: 'Millennium Falcon', capacity: 10, category: 'Smuggling Ship', location: 'Republic City', description: 'The Millennium Falcon is a YT-1300 light freifhter of the YT-1300f variety. The Millennium Falcon is a fictional starship in the Star Wars franchise. Designed by Joe Johnston for the movie Star Wars (1977), it has subsequently appeared in The Star Wars Holiday Special (1978), The Empire Strikes Back (1980), Return of the Jedi (1983), The Force Awakens (2015), The Last Jedi (2017), Solo: A Star Wars Story (2018), and The Rise of Skywalker (2019).', user: User.find_by(email: 'han@gmail.com'))
millenium_falcon.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
millenium_falcon.save!
puts "✅ millenium_falcon"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646210070/uss_entreprise_uzpobq.jpg')
uss_enterprise = Spacecraft.new(name: 'USS Enterprise', capacity: 8, category: 'Explorer Ship', location: 'Springfield, Massachusetts', description: 'The USS Enterprise (NCC-1701) was a 23rd century Federation Constitution-class starship operated by Starfleet. It was also the first ship to bear the name Enterprise with this registry. Launched in 2245, the ship was commanded by Captain Robert April until 2250, when command of the ship was turned over to April\'s First Officer Christopher Pike.During the Klingon War, the Enterprise and its crew were intentionally left out of the fighting by Starfleet Command as they considered the Enterprise to be the "best of Starfleet" and wanted them to survive.', user: User.find_by(email: 'kirk@gmail.com'))
uss_enterprise.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
uss_enterprise.save!
puts "✅ uss_enterprise"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1645884048/rick-and-morty-adult-swim-cartoon-gray-wallpaper_zulk97.jpg')
space_cruiser = Spacecraft.new(name: 'The Space Cruiser', capacity: 2, category: 'Personal Spacecraft', location: 'Scranton, Pennsylvanie', description: 'The Space Cruiser is an interdisciplinary vehicle designed and built by engineer-scientist Rick Sanchez with the aim of making space travel an easier and faster task for him. The Microverse-based powercell is the main powercell of the vehicle, whom in-habitants possess a culture based on the belief that the vehicle owner, Richard Sánchez, is an extraterrestrial lifeform with the sole purpose of spreading his knowledge in electricity. The powercell produces the energy required to power the vehicle\'s engine, while also distributing a minor part of it to its in-habitants.', user: User.find_by(email: 'rick@gmail.com'))
space_cruiser.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
space_cruiser.save!
puts "✅ space_cruiser"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646210272/charles_de_gaulle_n7g4uw.jpg')
soyuz = Spacecraft.new(name: 'Soyuz', capacity: 1, category: 'Space Capsule', location: 'Baikonour', description: 'Soyuz is a series of spacecraft which has been in service since the 1960s, having made more than 140 flights. It was designed for the Soviet space program by the Korolev Design Bureau (now Energia). The Soyuz succeeded the Voskhod spacecraft and was originally built as part of the Soviet crewed lunar programs. It is launched on a Soyuz rocket from the Baikonur Cosmodrome in Kazakhstan. Between the 2011 retirement of the Space Shuttle and the 2020 demo flight of SpaceX Crew Dragon, the Soyuz served as the only means to ferry crew to or from the International Space Station, for which it remains heavily used, although China did launch manned Shenzhou flights during this time, none of them docked with the ISS.', user: User.find_by(email: 'yuri@gmail.com'))
soyuz.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
soyuz.save!
puts "✅ soyuz"

file = URI.open('https://res.cloudinary.com/dfei5iavr/image/upload/v1646210338/nautilus_pvgmhz.jpg')
nautilus = Spacecraft.new(name: 'Nautilus', capacity: 20, category: 'Explorer Ship', location: 'Marianna Trench', description: 'Nautilus is described by Verne as "a masterpiece containing masterpieces".[3] It is designed and commanded by Captain Nemo. Electricity provided by sodium/mercury batteries (with the sodium provided by extraction from seawater) is the craft\'s primary power source for propulsion and other services. The energy needed to extract the sodium is provided by coal mined from the sea floor.', user: User.find_by(email: 'nemo@gmail.com'))
nautilus.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
nautilus.save!
puts "✅ nautilus"

puts "Creating reviews..."

review1 = Review.new(spacecraft_id: nautilus.id, content: "Very nice engine and lovely flight. I highly recommend!")
review1.save!
puts "✅ review1"

review2 = Review.new(spacecraft_id: columbia.id, content: "What an amazing space shuttle! So powerful, it's quite frightening...")
review2.save!
puts "✅ review2"

review3 = Review.new(spacecraft_id: columbia.id, content: "I did enjoyed this spacecraft even though 7 people might be a little tight.")
review3.save!
puts "✅ review3"

review4 = Review.new(spacecraft_id: tardis.id, content: "Well this is unexepcted...")
review4.save!
puts "✅ review4"

review5 = Review.new(spacecraft_id: tardis.id, content: "I enjoyed navigating this - should I call it space - craft! It is very amusing and the kids laughed the whole way :)")
review5.save!
puts "✅ review5"

review6 = Review.new(spacecraft_id: tardis.id, content: "TARDIS is one of a kind! I highly recommend this experience. ")
review6.save!
puts "✅ review6"

review7 = Review.new(spacecraft_id: soyuz.id, content: "Excellent spacecraft, even though it's not very spacious.")
review7.save!
puts "✅ review7"

review8 = Review.new(spacecraft_id: soyuz.id, content: "If you want time for yourself and have a nice trip, this is a very good choice of spacecraft. It only fits one person but honestly it is confirtable for a week trip. I recommend going to the moon once with it but no further. The leg spaec is quite minimal and one can get sore.")
review8.save!
puts "✅ review8"

review9 = Review.new(spacecraft_id: space_cruiser.id, content: "Fun spacecrfat to ride! Rick is very talented.")
review9.save!
puts "✅ review9"

review10 = Review.new(spacecraft_id: space_cruiser.id, content: "I mean, it was nice but the soacecraft is weirdly built. And it has a surprising smell...")
review10.save!
puts "✅ review10"
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
