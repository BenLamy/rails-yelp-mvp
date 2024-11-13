# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# 1. Clean the database
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances
puts "Creating restaurants..."
Restaurant.create!(name: "Feu le Grain de Folie", address: "7 Boundary St, London E2 7JE", phone_number: "0567453465", category: "french")
puts "Feu le Grain de Folie"
Restaurant.create!(name: "Ban mih", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0567454521", category: "chinese")
puts "Ban mih"
Restaurant.create!(name: "Boulangerie Dupuy", address: "18 Boundary St, London E2 7JE", phone_number: "0567457654", category: "french")
puts "Boulangerie Dupuy"
Restaurant.create!(name: "Pizza Lopez", address: "24 Shoreditch High St, London E1 6PQ", phone_number: "0567786509", category: "italian")
puts "Pizza Lopez"
Restaurant.create!(name: "Jour de Marché", address: "87 Boundary St, London E2 7JE", phone_number: "0567453498", category: "french")
puts "Jour de Marché"
Restaurant.create!(name: "Cyprien", address: "1876 Shoreditch High St, London E1 6PQ", phone_number: "0789909876", category: "belgian")
puts "Cyprien"

# 3. Display a message
puts "Finished! Created #{Restaurant.count} restaurants."
