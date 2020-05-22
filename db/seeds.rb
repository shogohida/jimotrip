# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# Constants for guides = jimotrip experiences
puts "define constants variables..."

TITLES = [
  'Walk around in Shinjuku',
  'Sushi tasting',
  'Sumo wresting',
  'Harajuku Kawaii Takeshita Street Tour',
  '”Must do" Walking Tour in SHIBUYA',
  'Find Your Hidden Shibuya Street Style',
  'Tokyotecture',
  'TEMPLE/SHRINE tour around TOKYO TOWER'
]

LOCATIONS = [
  'Shinjuku city, Tokyo',
  'Shibuya city, Tokyo',
  'Asakusa city, Tokyo',
  'Tsukiji city, Tokyo',
  'Harajuku city, Tokoy'
]

NAMES = [
  'Shogo',
  'Yun',
  'Pins',
  'Momo',
  'Katsu',
  'Grant',
  'Yusuke',
  'Lukasz',
  'Momo',
  'Chi',
  'Baris',
  'Nicole'
]

CATEGORIES = [
  'History',
  'Nature',
  'Culture',
  'Art',
  'Sports',
  'Music',
  'Food and Drinks',
  'Outdoors',
  'Shopping',
  'Festivals',
  'Relaxation',
  'Action and Adventure',
  'Touristy',
  'Family friendly',
  'Great for groups'
]

DESCRIPTIONS = [
  'I will show you guys the visuals of Shibuya, the views you can get of the Crossing from above',
  "LET'S GET OUT OF THE TOURIST AREA where it is super busy and crowded with people!",
  "I'm thinking about this tour which really welcome for solo traveller, group travelers and everyone.",
  "Let's explore the food wonderland of Tsukiji Outer Market and enjoy sampling some delicious food.",
  "Feel free to ask or change tour timings for booking!! We will be exploring the fashion district of Harajuku",
  "The tour is perfect for FIRST TIMER in Shibuya! We will show you both traditional and modern aspects of Shibuya",
  "We explore a 2200-foot or 670-meter-long lovely local shopping street to try 4 kinds of Japanese foods."
]

# puts 'Cleaning up the guides...'
# Guide.destroy_all
puts 'Cleaning up the user...'
User.destroy_all

puts 'Creating the users as tourists..'
# CREATE users as tourists
10.times do
  user = User.create!(
    name: Faker::Name.unique.name,
    email: Faker::Internet.email,
    password: "secret"
  )
end
puts "Finished creating #{User.count} users as tourists!"

puts 'Creating the users as guides..'
# CREATE users as guides
10.times do |count|
  user = User.create!(
    name: NAMES[count],
    email: Faker::Internet.email,
    password: "secret"
  )
  1.times do
    Guide.create!(
      title: TITLES.sample,
      location: LOCATIONS.sample,
      price: rand(1500..9000),
      category: CATEGORIES.sample,
      biography: Faker::Lorem.paragraph,
      description: DESCRIPTIONS.sample,
      user_id: user.id
    )
  end
end

puts "Finished creating #{User.count} users as guides!"
puts "Finished creating #{Guide.count} guides!"





# REALISTIC seeds - NOT finished

# require "open-uri"

# default_variable =
#   {
#     title: "",
#     location: ", Tokyo",
#     price: ,
#     category: "",
#     description: "...",
#     url: XXXXX
#   }

# personal_photographer =
#   {
#     title: "Personal Photographer & Guide in Tokyo",
#     location: "Shibuya city, Tokyo",
#     price: 6000,
#     category: "Art",
#     description: "I will show you guys the visuals of Shibuya, the views you can get of the Crossing from above. Off the beaten paths spots...",
#     url: XXXXX
#   }

# # url for sushi_tasting
# # https://images.squarespace-cdn.com/content/v1/5913c9bde4fcb5711ce79857/1562724606059-I0FVX7MM63ZZKKM7U36J/ke17ZwdGBToddI8pDm48kHTHJlACqy9PR67J39ATHOp7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UfZ1qQlCBU8D8HwMSx19XWWhZWoAraqJt_ybhixA0kzVDVfRxgAIsQ7eQiOnQS3C_Q/DeeperJapan_Tokyo_Sushi_Masterclass_00282.jpg?format=750w

# sushi_tasting =
#   {
#     title: "",
#     location: ", Tokyo",
#     price: ,
#     category: "",
#     description: "...",
#     url: XXXXX
#   }

# drink_eat_local_shinjuku =
# {
#   title: "Drink, Eat and Local in Shinjuku",
#   location: ", Tokyo",
#   price: ,
#   category: "1,500",
#   description: "(3 hours) I'm thinking about this tour which really welcome for solo traveller, group travelers and everyone. Through this tour, you can make friends with other traveller. I want to respect each of guest's things what they want ...",
#   url: XXXXX
# }



# guides = [
#   personal_photographer,
#   ]

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
