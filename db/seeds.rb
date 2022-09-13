# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seed starts"
Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Light in Paris',
  address: '10 Rue du Temple',
  description: 'A lovely place in Paris',
  price_per_night: 100,
  number_of_guests: 2
)

Flat.create!(
  name: 'London of joy',
  address: '56 Denver Street',
  description: 'Amazing',
  price_per_night: 150,
  number_of_guests: 6
)
puts "Seed is over"
