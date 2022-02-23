require 'faker'

puts "Deleting all old restaurants and reviews"

Restaurant.destroy_all

puts "Creating all new restaurants and reviews"

categories = ["chinese", "italian", "japanese", "french", "belgian"]

15.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: categories.sample)

  15.times do
    Review.create!(rating: rand(0..5), content: Faker::TvShows::Seinfeld.quote, restaurant: restaurant)

  end
end
