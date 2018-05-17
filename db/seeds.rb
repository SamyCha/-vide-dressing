# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts 'All tables are destroyed!'

# Users
# admins and sellers:
User.create!(pseudo: 'SamyCha', email: 'samy@gmail.com', password: '123456', address: '21 quai des salinieres Bordeaux', admin: true, state: 1)
User.create!(pseudo: 'Saraquette', email: 'sarah@gmail.com', password: '123456', address: '64 avenue des Gobelins Paris', admin: true, state: 1)
# sellers only:
User.create!(pseudo: 'Pup', email: 'pup@gmail.com', password: '123456', address: '34 chemin des Bouviers Port Sainte Foy', state: 1)
User.create!(pseudo: 'Mum', email: 'mum@gmail.com', password: '123456', address: '34 chemin des Bouviers Port Sainte Foy', state: 1)
User.create!(pseudo: Faker::Superhero.descriptor, email: 'seller@gmail.com', password: '123456', address: Faker::Address.city, state: 1)
# buyers only:
User.create!(pseudo: Faker::Superhero.descriptor, email: 'buyer@gmail.com', password: '123456', address: Faker::Address.city, state: 0)
User.create!(pseudo: Faker::Superhero.descriptor, email: 'buyer1@gmail.com', password: '123456', address: Faker::Address.city, state: 0)
User.create!(pseudo: Faker::Superhero.descriptor, email: 'buyer2@gmail.com', password: '123456', address: Faker::Address.city, state: 0)
User.create!(pseudo: Faker::Superhero.descriptor, email: 'buyer3@gmail.com', password: '123456', address: Faker::Address.city, state: 0)
User.create!(pseudo: Faker::Superhero.descriptor, email: 'buyer4@gmail.com', password: '123456', address: Faker::Address.city, state: 0)
User.create!(pseudo: Faker::Superhero.descriptor, email: 'buyer5@gmail.com', password: '123456', address: Faker::Address.city, state: 0)

# Products

Product.create!(name: 'Collier Africain', brand: 'Saatie', size: '44', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'chaussures', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.first.id)
Product.create!(name: 'Boucles d oreilles', brand: 'Saatie', size: '42', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'chaussures', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.second.id)
Product.create!(name: 'Sac à main', brand: 'Paris Wayuu', size: 'medium', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'pantallon', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.find(3).id)
Product.create!(name: 'Chemise de nuit', brand: 'Vijoli Concept', size: 'petit', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'sac', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.find(4).id)
Product.create!(name: 'Noeud Papillon', brand: 'Bold & Bow', size: 'grande', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'ceinture', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.find(5).id)
Product.create!(name: 'Sac en cuir', brand: 'Au contraire Paris', size: '38', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'chaussures', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.first.id)
Product.create!(name: 'Chaussons enfant', brand: 'Modani', size: '42', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'chaussures', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.second.id)
Product.create!(name: 'Pendentif Asiatique', brand: 'Adorness', size: 'medium', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'pantallon', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.find(3).id)
Product.create!(name: 'Sac en cuir', brand: 'Brasiliana', size: 'petit', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'sac', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.find(4).id)
Product.create!(name: 'Robe Wax', brand: 'TifaCréations', size: 'grande', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'ceinture', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.find(5).id)
Product.create!(name: 'Bracelet Argent', brand: 'Nova', size: '42', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'chaussures', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.first.id)
Product.create!(name: 'Sac en tissu', brand: 'Prunelle', size: '42', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'chaussures', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.second.id)
Product.create!(name: 'Chemiser Soie', brand: 'Lena & Cie', size: 'medium', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'pantallon', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.find(3).id)
Product.create!(name: 'Veste Wax', brand: 'TifaCréation', size: 'petite', color: Faker::Color.color_name, description: Faker::Food.dish, category: 'veste', state: 'neuf', active: true, status: 0, address: Faker::Address.city, price: Faker::Number.between(5, 100), user_id: User.find(4).id)

puts '----- Seed done ! -----'
