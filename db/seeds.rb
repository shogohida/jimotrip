# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# puts 'Cleaning up the guides...'
# Guide.destroy_all
puts 'Cleaning up the user...'
User.destroy_all

LOCATIONS = ['Tokyo', 'Osaka', 'Hiroshima', 'Kyoto']
GUIDES_TITLE = ['Walk around in Shinjuku', '' ]


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

# guides = [
#   {
#     title: ,
#     location: ,
#     price: ,
#     url: (image upload lesson)
#   }
# ]




puts 'Creating the users as guides..'
# CREATE users as guides
10.times do
  user = User.create!(
    name: Faker::Name.unique.name,
    email: Faker::Internet.email,
    password: "secret"
  )
  1.times do
    Guide.create!(
      title: ;
      price: rand(5000..9000),
      location: LOCATIONS.sample,
      biography: Faker::Lorem.paragraph,
      user_id: user.id
    )
  end
end

puts "Finished creating #{User.count} users as guides!"
puts "Finished creating #{Guide.count} guides!"

