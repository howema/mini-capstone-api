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

  # def aquarium_tank
  #   input = params["query"]
  #   output_message = input
  #   output_message = "Welcome to Best Aquarium Buy! So, you want a tank?"
  #   render json: { message: output_message }

  # def any_product......
  #   input = params["query"]
  #   output_message = input
  #   output_message = "Welcome to Best Aquarium Buy! So, you want a tank?"
  #   render json: { message: output_message }
  # end

  def body_params
    input_value = params["secret"]
    render json: { message: "The secret is #{input_value}" }
  end

  def index
    products = Product.all
    render json: products
  end

  def show
    product_id = params["id"]
    product = Product.find(product_id)
    render json: product
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["image_url"],
    )
    product.save
    render json: product
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    product.save
    render json: product
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.destroy
    render json: { message: "Destroyed!" }
  end
end
