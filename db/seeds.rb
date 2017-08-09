# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
puts "create restaurants.."
CAT = %w(chinese italian japanese french belgian)
5.times do
restaurant = Restaurant.new(
  name: Faker::GameOfThrones.house,
  address: Faker::Address.street_address,
  category: CAT.sample
  )
restaurant.save!
end
puts "restaurant created"
