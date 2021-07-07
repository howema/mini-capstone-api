class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    order = Order.new(
      user_id: current_user.id,
      # product_id: params[:product_id],
      # quantity: params[:quantity],
      # subtotal: product.price * params[:quantity].to_i,
      # tax: product.tax * params[:quantity].to_i,
      # total: product.total * params[:quantity].to_i,
    )
    if order.save
      carted_products.update_all(status: "purchased", order_id: order.id)
      render json: order
    else
      render json: [], status: :unauthorized
    end
  end

  def index
    if current_user
      orders = current_user.orders
      render json: orders
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    render json: order
  end
end
