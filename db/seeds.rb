# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

24.times do
  puts 'start creating a flat'
  flat = Flat.create!(
    name: "#{[Faker::Adjective.negative, Faker::Adjective.positive].sample} flat in #{Faker::Address.community}",
    address: Faker::Address.street_address,
    description: Faker::ChuckNorris.fact,
    price_per_night: rand(25..500),
    number_of_guests: rand(1..8)
  )
  puts "finished creating flat #{flat.id}"
end
