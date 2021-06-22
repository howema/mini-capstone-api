# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

product = Product.create(name: "Aquarium_tank", price: 1000000, image_url: "http://sc04.alicdn.com/kf/HTB1CZTxX.T1gK0jSZFhq6yAtVXaH.jpg", description: "Really big and made of mermaid glass")

product = Product.create(name: "Shark", price: 20, image_url: "https://frontiersinblog.files.wordpress.com/2020/01/frontiers-marine-science-estimating-global-catches-marine-recreational-fishes.jpg?w=1000", description: "Buy 2 sharks, get one free")

product = Product.create(name: "Nemo", price: 50, image_url: "https://upload.wikimedia.org/wikipedia/commons/9/9b/A._percula.jpg", description: "Have you seen my dad?")

product = Product.create(name: "Starfish", price: 100, image_url: "https://www.hdwallpapersnature.com/wp-content/uploads/2020/08/Pink-Starfish-Hd-Wallpaper-9.jpg", description: "Their arms grow back!")

product = Product.create(name: "Big Fish", price: 5, image_url: "https://reelclub.files.wordpress.com/2012/05/bf1.jpg", description: "It's a play on words.")

product = Product.create(name: "Leviathan", price: 500000, image_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8dd71862-4114-4978-9913-b390e641e461/ddpd24l-85ac46ad-25a4-4863-8fca-20408babdbaa.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzhkZDcxODYyLTQxMTQtNDk3OC05OTEzLWIzOTBlNjQxZTQ2MVwvZGRwZDI0bC04NWFjNDZhZC0yNWE0LTQ4NjMtOGZjYS0yMDQwOGJhYmRiYWEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.yU4U7WGat-6Qg3UHi20XjAiPOvealRnyGvaHEc06LzI", description: "Reaper class. Highly agressive.")

product = Product.create(name: "Stingray", price: 30, image_url: "https://images.unsplash.com/photo-1509414016757-23d57a425e06?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c3RpbmdyYXl8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80", description: "Colorful sea pancake.")

product = Product.create(name: "Colorful coral", price: 18, image_url: "https://media.fromthegrapevine.com/assets/images/2015/6/Colorful%20coral%20reef.jpg.824x0_q71_crop-scale.jpg", description: "Much more popular than our greyscale coral.")

product = Product.create(name: "Narwhal", price: 78, image_url: "https://lirp.cdn-website.com/a67897e8/dms3rep/multi/opt/narwhal-960w.jpg", description: "Majestic sea unicorn")
