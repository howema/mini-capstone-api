# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create(name: "Aquarium_tank", price: 1000000, image_url: "", description: "Really big and made of mermaid glass")

product = Product.create(name: "Shark", price: 20, image_url: "", description: "Buy 2 sharks, get one free")

product = Product.create(name: "Nemo", price: 50, image_url: "", description: "Have you seen my dad?")

product = Product.create(name: "Starfish", price: 100, image_url: "", description: "I did a report on starfish in 1st grade. Their arms grow back!")
