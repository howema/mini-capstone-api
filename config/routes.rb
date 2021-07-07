Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/shark_path/:key" => "products#shark" #url segment parameter

  get "/aquarium_path" => "products#aquarium_tank" #query parameters

  post "/body_params" => "products#body_params"

  #=====================================

  get "/products", controller: "products", action: "index"

  get "/products/:id", controller: "products", action: "show"

  post "/products", controller: "products", action: "create"

  patch "/products/:id", controller: "products", action: "update"

  delete "/products/:id", controller: "products", action: "destroy"

  #======================================

  get "/suppliers" => "suppliers#index"

  get "/suppliers/:id" => "suppliers#show"

  post "/suppliers" => "suppliers#create"

  patch "/suppliers/:id" => "suppliers#update"

  delete "/suppliers/:id" => "suppliers#destroy"

  #=========================================

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  #============================================

  post "/orders" => "orders#create"

  get "/orders/:id" => "orders#show"

  get "/orders" => "orders#index"

  #==================================

  post "/carted_orders" => "carted_orders#create"
end
