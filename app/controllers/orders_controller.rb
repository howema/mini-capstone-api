class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity].to_i,
      tax: product.tax * params[:quantity].to_i,
      total: product.total * params[:quantity].to_i,
    )
    order.save
    render json: order.as_json
  end

  def index
    orders = Order.all
    render json: order.as_json
  end

  def show
      order = current_user.orders.find_by(id: params[:id])
      render json: order
    end
  end
end
