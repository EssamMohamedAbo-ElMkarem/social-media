# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# db/seeds.rb

# McLaren Post

User.create!(
  email: "essamessam4320@gmail.com",
  password: "password"
)

Post.create!(
  caption: "McLaren's Comeback in 2023!",
  body: "McLaren has shown incredible progress this season, with Lando Norris and Oscar Piastri delivering consistent performances. The upgrades to the MCL60 have made them a strong contender in the midfield.",
  user_id: 1, # Replace with the actual user ID
  images: [ Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/mclaren.jpg'), 'image/jpg') ]
)

# Red Bull Post
Post.create!(
  caption: "Dominance Continues for Red Bull!",
  body: "Max Verstappen and Sergio Perez are dominating the 2023 season with the RB19. The car's aerodynamic efficiency and Honda-powered engine make it nearly unbeatable.",
  user_id: 1, # Replace with the actual user ID
  images: [ Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/redbull.jpg'), 'image/jpg') ]
)

# Ferrari Post
Post.create!(
  caption: "Ferrari's Struggles in 2023",
  body: "Despite having a strong car, Ferrari has struggled with strategy and reliability issues. Charles Leclerc and Carlos Sainz are pushing hard, but the team needs to improve to challenge Red Bull.",
  user_id: 1, # Replace with the actual user ID
  images: [ Rack::Test::UploadedFile.new(Rails.root.join('app/assets/images/ferrari.jpg'), 'image/jpg') ]
)

puts "Posts created successfully!"
