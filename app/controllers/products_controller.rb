class ProductsController < ApplicationController
  # def all_products
  #   product = Product.all
  #   render json: product.as_json
  # end

  # def Aquarium_tank
  #   product = Product.first
  #   render json: product.as_json
  # end

  # def Shark
  #   product = Product.second
  #   render json: product.as_json
  # end

  # def Nemo
  #   product = Product.third
  #   render json: product.as_json
  # end

  # def Starfish
  #   product = Product.fourth
  #   render json: product.as_json
  # end

  def shark
    input = params["key"]
    render json: { message: "The url segment is #{input}" }
  end

  def aquarium_tank
    input = params["query"]
    output_message = input
    output_message = "Welcome to Best Aquarium Buy! So, you want a tank?"
    render json: { message: output_message }
  end
end
