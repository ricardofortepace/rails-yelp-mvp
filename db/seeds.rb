require 'faker'

puts "Deleting all old restaurants"

Restaurant.destroy_all

puts "Creating all new restaurants"

categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, category: categories.sample)
end
