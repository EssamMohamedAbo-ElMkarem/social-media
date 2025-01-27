# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# db/seeds.rb

# McLaren Post

user_1 = User.create!(
  email: "essamessam4320@gmail.com",
  password: "password"
)

user_2 = User.create!(
  email: "dalia_mansour@gmail.com",
  password: "password"
)

timestamps = [
  DateTime.new(2025, 1, 26, 13, 30, 0),
  DateTime.new(2025, 1, 27, 10, 15, 0),
  DateTime.new(2025, 1, 27, 17, 45, 0),
  DateTime.new(2025, 1, 26, 14, 30, 0),
  DateTime.new(2025, 1, 27, 9, 15, 0),
  DateTime.new(2025, 1, 27, 18, 45, 0)
]

Post.create!(
  caption: "McLaren's Comeback in 2023!",
  body: "McLaren has shown incredible progress this season, with Lando Norris and Oscar Piastri delivering consistent performances. The upgrades to the MCL60 have made them a strong contender in the midfield.",
  user_id: user_1.id, # Replace with the actual user ID
  created_at: timestamps[0],
  images: [ Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/mclaren.jpg'), 'image/jpg') ]
)

# Red Bull Post
Post.create!(
  caption: "Dominance Continues for Red Bull!",
  body: "Max Verstappen and Sergio Perez are dominating the 2023 season with the RB19. The car's aerodynamic efficiency and Honda-powered engine make it nearly unbeatable.",
  user_id: user_1.id, # Replace with the actual user ID
  created_at: timestamps[1],
  images: [ Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/redbull.jpg'), 'image/jpg') ]
)

# Ferrari Post
Post.create!(
  caption: "Ferrari's Struggles in 2023",
  body: "Despite having a strong car, Ferrari has struggled with strategy and reliability issues. Charles Leclerc and Carlos Sainz are pushing hard, but the team needs to improve to challenge Red Bull.",
  user_id: user_1.id, # Replace with the actual user ID
  created_at: timestamps[2],
  images: [ Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/ferrari.jpg'), 'image/jpg') ]
)

# Williams Post
Post.create!(
  caption: "Williams' Progress in 2025",
  body: "Williams has made significant strides this season, with their new aerodynamic package showing promise. Alex Albon and Logan Sargeant are working hard to bring the team back to the midfield.",
  user_id: user_2.id,
  created_at: timestamps[3],
  images: [ Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/williams.jpg'), 'image/jpg') ]
)

# Aston Martin Post
Post.create!(
  caption: "Aston Martin's Strong Start to 2025",
  body: "Aston Martin has started the 2025 season strongly, with Fernando Alonso and Lance Stroll delivering consistent performances. The team's focus on development is paying off.",
  user_id: user_2.id,
  created_at: timestamps[4],
  images: [ Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/aston_martin.jpg'), 'image/jpg') ]
)

# Haas Post
Post.create!(
  caption: "Haas' Challenges in 2025",
  body: "Haas is facing challenges this season, with their car struggling for pace. Kevin Magnussen and Nico Hulkenberg are doing their best to extract performance, but the team needs more upgrades.",
  user_id: user_2.id,
  created_at: timestamps[5],
  images: [ Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/haas.jpg'), 'image/jpg') ]
)

puts "Seeding completed successfully!"
