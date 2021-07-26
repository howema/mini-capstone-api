class ProductsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def shark
    input = params["key"]
    render json: { message: "The url segment is #{input}" }
  end

  def body_params
    input_value = params["secret"]
    render json: { message: "The secret is #{input_value}" }
  end

  def index
    if params[:category]
      category = Category.find_by(name: params[:category])
      products = category.products
    else
      products = Product.all
    end
    render json: products.as_json
  end

  def show
    product_id = params["id"]
    product = Product.find(product_id)
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params["supplier_id"],
    )

    if product.save
      render json: product.as_json
    else
      render json: { errors: product.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description
    product.supplier_id = params[:supplier_id] || product.supplier_id

    if product.save
      render json: product.as_json
    else
      render json: { errors: product.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.destroy
    render json: { message: "Destroyed!" }
  end
end
