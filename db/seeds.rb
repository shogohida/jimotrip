# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# # Constants for guides = jimotrip experiences
# puts "define constants variables..."

# TITLES = [
#   'Walk around in Shinjuku',
#   'Sushi tasting',
#   'Sumo wresting',
#   'Harajuku Kawaii Takeshita Street Tour',
#   '”Must do" Walking Tour in SHIBUYA',
#   'Find Your Hidden Shibuya Street Style',
#   'Tokyotecture',
#   'TEMPLE/SHRINE tour around TOKYO TOWER'
# ]

# LOCATIONS = [
#   'Shinjuku city, Tokyo',
#   'Shibuya city, Tokyo',
#   'Asakusa city, Tokyo',
#   'Tsukiji city, Tokyo',
#   'Harajuku city, Tokoy'
# ]

# NAMES = [
#   'Shogo',
#   'Yun',
#   'Pins',
#   'Momo',
#   'Katsu',
#   'Grant',
#   'Yusuke',
#   'Lukasz',
#   'Momo',
#   'Chi',
#   'Baris',
#   'Nicole'
# ]

# CATEGORIES = [
#   'History',
#   'Nature',
#   'Culture',
#   'Art',
#   'Sports',
#   'Music',
#   'Food and Drinks',
#   'Outdoors',
#   'Shopping',
#   'Festivals',
#   'Relaxation',
#   'Action and Adventure',
#   'Touristy',
#   'Family friendly',
#   'Great for groups'
# ]

# DESCRIPTIONS = [
#   'I will show you guys the visuals of Shibuya, the views you can get of the Crossing from above',
#   "LET'S GET OUT OF THE TOURIST AREA where it is super busy and crowded with people!",
#   "I'm thinking about this tour which really welcome for solo traveller, group travelers and everyone.",
#   "Let's explore the food wonderland of Tsukiji Outer Market and enjoy sampling some delicious food.",
#   "Feel free to ask or change tour timings for booking!! We will be exploring the fashion district of Harajuku",
#   "The tour is perfect for FIRST TIMER in Shibuya! We will show you both traditional and modern aspects of Shibuya",
#   "We explore a 2200-foot or 670-meter-long lovely local shopping street to try 4 kinds of Japanese foods."
# ]

# # puts 'Cleaning up the guides...'
# # Guide.destroy_all
# puts 'Cleaning up the user...'
# User.destroy_all

# puts 'Creating the users as tourists..'
# # CREATE users as tourists
# 10.times do
#   user = User.create!(
#     name: Faker::Name.unique.name,
#     email: Faker::Internet.email,
#     password: "secret"
#   )
# end
# puts "Finished creating #{User.count} users as tourists!"

# puts 'Creating the users as guides..'
# # CREATE users as guides
# 10.times do |count|
#   user = User.create!(
#     name: NAMES[count],
#     email: Faker::Internet.email,
#     password: "secret"
#   )
#   1.times do
#     Guide.create!(
#       title: TITLES.sample,
#       location: LOCATIONS.sample,
#       price: rand(1500..9000),
#       category: CATEGORIES.sample,
#       biography: Faker::Lorem.paragraph,
#       description: DESCRIPTIONS.sample,
#       user_id: user.id
#     )
#   end
# end

# puts "Finished creating #{User.count} users as guides!"
# puts "Finished creating #{Guide.count} guides!"





# REALISTIC seeds - NOT finished

# NAMES = [
#   'Shogo',
#   'Yun',
#   'Pins',
#   'Momo',
#   'Katsu',
#   'Grant',
#   'Yusuke',
#   'Lukasz',
#   'Momo',
#   'Chi',
#   'Baris',
#   'Nicole'
# ]

# require "open-uri"

# puts 'Cleaning up the bookings...'
# Booking.destroy_all
# puts 'Cleaning up the guides...'
# Guide.destroy_all
# puts 'Cleaning up the user...'
# User.destroy_all

# puts 'Creating the users and guides...'
# 10.times do
#   user = User.create!(
#     name: NAMES.sample,
#     email: Faker::Internet.email,
#     password: "secret"
#   )
#   1.times do |count|
#     photo_personal_photographer = URI.open('https://a0.muscache.com/im/pictures/763cbba6-1c23-44e2-a4dd-7605de06f445.jpg?aki_policy=exp_xl')
#     personal_photographer = Guide.new(
#         title: "Personal Photographer & Guide in Tokyo",
#         location: "Shibuya city, Tokyo",
#         price: 6000,
#         category: "Art",
#         description: "I will show you guys the visuals of Shibuya, off the beaten paths spots...",
#         user_id: user[count]
#     )
#     photo_personal_photographer.photo.attach(io: photo_personal_photographer, filename: 'photo_personal_photographer.png', content_type: 'image/png')

#     photo_sake_secrets = URI.open('https://a0.muscache.com/im/pictures/056010a4-0904-47ec-9cd5-162ae49b9d86.jpg?aki_policy=exp_md')
#     sake_secrets = Guide.new(
#         title: "Sake Secrets from Japan's Oldest Brewery",
#         location: "Asakusa, Tokyo",
#         price: 3500,
#         category: "Food and Drinks",
#         description: "I will introduce you to the origins of sake (hint, hint, it involves drunk shamanism). I'll share how sake is made and the differences between wine and sake.",
#         user_id: user[count]
#     )
#     sake_secrets.photo.attach(io: photo_sake_secrets, filename: 'photo_sake_secrets.png', content_type: 'image/png')

#     photo_drink_eat_local_shinjuku = URI.open('https://a0.muscache.com/im/pictures/lombard/MtTemplate-1567554-media_library/original/cf0e305c-3aeb-4b2d-ae2d-a215b563ce6c.jpeg?aki_policy=exp_md')
#     drink_eat_local_shinjuku = Guide.New(
#       title: "Drink, Eat and Local in Shinjuku",
#       location: "Shinjuku, Tokyo",
#       price: 1500,
#       category: "Food and Drinks",
#       description: "(3 hours) I'm thinking about this tour which really welcome for solo traveller, group travelers and everyone. Through this tour, you can make friends with other traveller. I want to respect each of guest's things what they want ...",
#       user_id: user[count]
#     )
#     drink_eat_local_shinjuku.photo.attach(io: photo_drink_eat_local_shinjuku, filename: 'photo_drink_eat_local_shinjuku.png', content_type: 'image/png')
#   end
#   puts "Finished creating #{Guide.count} guides!"
# end
# puts "Finished creating #{User.count} users!"






# puts 'Creating the users as tourists..'
# # CREATE users as tourists
# 10.times do
#   user = User.create!(
#     name: Faker::Name.unique.name,
#     email: Faker::Internet.email,
#     password: "secret"
#   )
# end
# puts "Finished creating #{User.count} users as tourists!"


# CODE from mister cocktail challenge

# puts 'Creating the cocktails with attached image and 2 associated doses...'
# 3.times do
#   cocktail = Cocktail.create!(
#     name: Faker::Name.first_name
#   )
#   file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
#   cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   2.times do |count|
#     Dose.create!(
#       description: "#{rand(0..5)} cl",
#       cocktail: cocktail,
#       ingredient: Ingredient.all[count]
#     )
#   end
# end

# CODE from https://kitt.lewagon.com/camps/394/lectures/05-Rails%2F05-Rails-MC-with-images

# require "open-uri"

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')



# puts "Creating guides..."
# guides.each do |guide|
#   guide = Restaurant.create!(guide)
#   puts "Created #{guide.title}"
# end

# puts "Finished!"


# CODE FROM LECTURE - to help build realistic seeds
# CODE FROM LECTURE - https://kitt.lewagon.com/camps/394/lectures/05-Rails%2F03-Rails-restaurant-reviews#source

# # db/seeds.rb
# puts "Cleaning database..."
# Restaurant.destroy_all

# puts "Creating restaurants..."
# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 }

# [ dishoom, pizza_east ].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"
