# Category.create!([
#   {name: "Practical props"},
#   {name: "Sci Fi shit"},
#   {name: "Truly hilarious pop culture references"}
# ])
# Supplier.create!([
#   {name: "Aqua Aggregate", email: "aqua_agg@splishsplash.com", phone_number: "848.999.0101"},
#   {name: "Water Wares", email: "which_water_wares@water.com", phone_number: "535.555.1221"}
# ])
# Product.create!([
#   {name: "Starfish", price: "100.0", description: "Their arms grow back!", stock: nil, supplier_id: 1},
#   {name: "Nemo", price: "50.0", description: "Have you seen my dad?", stock: nil, supplier_id: 2},
#   {name: "Big Fish", price: "5.0", description: "It's a play on words.", stock: nil, supplier_id: 2},
#   {name: "Leviathan", price: "500000.0", description: "Reaper class. Highly aggressive.", stock: nil, supplier_id: 2},
#   {name: "Narwhal", price: "78.0", description: "Majestic sea unicorn.", stock: nil, supplier_id: 2},
#   {name: "Stingray", price: "30.0", description: "Colorful sea pancake.", stock: nil, supplier_id: 1},
#   {name: "Colorful Coral", price: "18.0", description: "Much more popular than our greyscale coral.", stock: nil, supplier_id: 1},
#   {name: "Rainbowfish", price: "6.66", description: "Somewheeeeere, over the fiISH.", stock: nil, supplier_id: 1},
#   {name: "Aquarium Tank", price: "1000000.0", description: "Really big and made of mermaid glass.", stock: nil, supplier_id: 1},
#   {name: "Bubbles", price: "0.01", description: "Just in case.", stock: nil, supplier_id: 1},
#   {name: "Shark", price: "20.0", description: "Buy 2 sharks, get one free!", stock: nil, supplier_id: 1},
#   {name: "Jellyfish", price: "19.95", description: "Estimated to be older than dinosaurs.", stock: nil, supplier_id: 1},
#   {name: "Tiny Submarine", price: "500.95", description: "For tiny adventures.", stock: nil, supplier_id: 2},
#   {name: "Krusty Krab", price: "77.98", description: "For snacks along your journey. (You Like Krabby Patties. Don't You Squidward?)", stock: nil, supplier_id: 2}
# ])
# CategoryProduct.create!([
#   {product_id: 22, category_id: 1},
#   {product_id: 23, category_id: 1},
#   {product_id: 24, category_id: 3},
#   {product_id: 25, category_id: 1},
#   {product_id: 26, category_id: 3},
#   {product_id: 27, category_id: 2},
#   {product_id: 28, category_id: 1},
#   {product_id: 29, category_id: 1},
#   {product_id: 30, category_id: 1},
#   {product_id: 31, category_id: 2},
#   {product_id: 32, category_id: 3},
#   {product_id: 33, category_id: 3},
#   {product_id: 34, category_id: 2},
#   {product_id: 35, category_id: 1}
# ])
# Order.create!([
#   {user_id: 1, subtotal: "40.0", tax: "0.07", total: "27.0"},
#   {user_id: 1, subtotal: "100.0", tax: "4.5", total: "54.5"},
#   {user_id: 1, subtotal: "100.0", tax: "9.0", total: "109.0"}
# ])
# User.create!([
#   {name: "Meg", email: "Meg@example.com", password_digest: "$2a$12$vepONdbjvvIfNbVPQab0tuMXyLtHkIzMgnE63kNqe6ZuJrKSrXC9K", admin: false},
#   {name: nil, email: "Meg@gmail.com", password_digest: "$2a$12$V.vYJGWLSrJh8tWlWNPAL..XnjONCYP4wr01LwNxnifmmlAgwdRBm", admin: false},
#   {name: "Tim", email: "Tim@example.com", password_digest: "$2a$12$9e.NzGrMnEd3ISdEG5SfpOC2mIuLqwN9calk.kiC55TuIzrXSyek6", admin: false},
#   {name: "Fishy", email: "Fishy@example.com", password_digest: "$2a$12$1NpJW.y4RSvltO4el7miV.HbE7M2l6HD9PNSM5Z2Pjy8rW3Fiyyz6", admin: false}
# ])

image = Image.create!(url: "http://sc04.alicdn.com/kf/HTB1CZTxX.T1gK0jSZFhq6yAtVXaH.jpg", product_id: 22) #aquarium

image = Image.create!(url: "https://frontiersinblog.files.wordpress.com/2020/01/frontiers-marine-science-estimating-global-catches-marine-recreational-fishes.jpg?w=1000", product_id: 23) #shark

image = Image.create!(url: "https://upload.wikimedia.org/wikipedia/commons/9/9b/A._percula.jpg", product_id: 24) #nemo

image = Image.create!(url: "https://www.hdwallpapersnature.com/wp-content/uploads/2020/08/Pink-Starfish-Hd-Wallpaper-9.jpg", product_id: 25) #starfish

image = Image.create!(url: "https://reelclub.files.wordpress.com/2012/05/bf1.jpg", product_id: 26) #big fish

image = Image.create!(url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8dd71862-4114-4978-9913-b390e641e461/ddpd24l-85ac46ad-25a4-4863-8fca-20408babdbaa.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzhkZDcxODYyLTQxMTQtNDk3OC05OTEzLWIzOTBlNjQxZTQ2MVwvZGRwZDI0bC04NWFjNDZhZC0yNWE0LTQ4NjMtOGZjYS0yMDQwOGJhYmRiYWEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.yU4U7WGat-6Qg3UHi20XjAiPOvealRnyGvaHEc06LzI", product_id: 27) #leviathan

image = Image.create!(url: "https://images.unsplash.com/photo-1509414016757-23d57a425e06?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c3RpbmdyYXl8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80", product_id: 28) #stingray

image = Image.create!(url: "https://media.fromthegrapevine.com/assets/images/2015/6/Colorful%20coral%20reef.jpg.824x0_q71_crop-scale.jpg", product_id: 29) #colorful coral

image = Image.create!(url: "https://lirp.cdn-website.com/a67897e8/dms3rep/multi/opt/narwhal-960w.jpg", product_id: 30) #narwhal

image = Image.create!(url: "https://www.frommers.com/system/media_items/attachments/000/866/326/s980/OceanGate_Submersible.jpg?1605048903", product_id: 31) #tiny sub

image = Image.create!(url: "https://www.australiangeographic.com.au/wp-content/uploads/2020/09/fairy-wrasse.jpg", product_id: 32) #rainbowfish

image = Image.create!(url: "https://upload.wikimedia.org/wikipedia/en/3/33/Krusty_Krab_230b.png", product_id: 33) #krusty krab

image = Image.create!(url: "https://cdn.shopify.com/s/files/1/1970/9573/products/1130-2x2-light-lens_1024x1024.jpg?v=1495154401", product_id: 34) #bubbbles

image = Image.create!(url: "https://www.cnet.com/a/img/cjjaCaHOUtSm9rNSPdR8Ro5BMDU=/1200x675/2020/05/22/57f0b4ca-cdd8-4916-a02a-cd2128352e09/232220-web.jpg", product_id: 29) #colorful coral 2

image = Image.create!(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7dmbakGUD4GCzutbRRUZz5cWLwiCZ9zYoTg&usqp=CAU", product_id: 23) #shark 2

image = Image.create!(url: "https://wpcdn.us-midwest-1.vip.tn-cloud.net/www.honolulumagazine.com/content/uploads/data-import/ef3a0586/1280px-Tiger_shark.jpg", product_id: 23) #shark 3
