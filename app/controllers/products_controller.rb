class ProductsController < ApplicationController
  def all_products
    product = Product.all
    render json: product.as_json
  end

  def Aquarium_tank
    product = Product.first
    render json: product.as_json
  end

  def Shark
    product = Product.second
    render json: product.as_json
  end

  def Nemo
    product = Product.third
    render json: product.as_json
  end

  def Starfish
    product = Product.fourth
    render json: product.as_json
  end
end
