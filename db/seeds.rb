# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

List.create(title: "Laundry", details: "Do not mix colors!")
List.create(title: "Studying", details: "A lot of flashcards to do", completed: true)

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200'
)

 User.create!(
  email: 'makivka.shepelyuk@example.com',
  password: 'dd310ac9b99dfead',
  first_name: 'Makivka',
  last_name: 'Shepelyuk',
  nickname: 'bigelephant834',
  bio: 'scale collaborative channels',
  due_date: '2025-02-24',
  post_code: '2008',
  parent_experience: 1,
  is_mentor: true,
  joined_mentor_program: true
)
