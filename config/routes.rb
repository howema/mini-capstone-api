Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "/all_products", controller: "products", action: "all_products"

  # get "/aquarium_path", controller: "products", action: "Aquarium_tank"

  # get "/shark_path", controller: "products", action: "Shark"

  # get "/nemo_path", controller: "products", action: "Nemo"

  # get "/starfish_path", controller: "products", action: "Starfish"

  # get "/shark_path" => "products#starfish"

  get "/shark_path/:key" => "products#shark" #url segment parameter

  get "/aquarium_path" => "products#aquarium_tank" #query parameters
end
