# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database.."

Restaurant.destroy_all

puts "Uploading 5 new restaurants..."

5.times do
    new_restaurant = Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
    )

    puts "#{new_restaurant.id} - #{new_restaurant.name} was created"
end

puts "Restaurants uploaded."
