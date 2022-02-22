# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Nft.destroy_all
Nft.create(name: "Spaceship 1", description: "Lorem iupsum", price: 5, wallet_address: "ujsdfksdi")
Nft.create(name: "Spaceship 2", description: "Some description", price: 5, wallet_address: "fasdfds")
Nft.create(name: "Spaceship 3", description: "Another description", price: 5, wallet_address: "afsdfds")
Nft.create(name: "Spaceship 1", description: "Lorem iupsum", price: 5, wallet_address: "ujsdfksdi")
Nft.create(name: "Spaceship 2", description: "Some description", price: 5, wallet_address: "fasdfds")
Nft.create(name: "Spaceship 3", description: "Another description", price: 5, wallet_address: "afsdfds")

puts "Created #{Nft.count} nfts"
