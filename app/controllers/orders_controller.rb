class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = current_user.carted_products.where(status: "carted")

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end
    ####missing stuff here!!!!!!!!!!!!!

    order = Order.new(
      user_id: current_user.id,
      # product_id: params[:product_id],
      # quantity: params[:quantity],
      subtotal: product.price * params[:quantity].to_i,
      tax: product.tax * params[:quantity].to_i,            #CHANGE THESE SEE PUSH
      total: product.total * params[:quantity].to_i,
    )
    if order.save
      carted_products.update_all(status: "purchased", order_id: order.id)
      render json: order.as_json
    else
      render json: [], status: :unauthorized
    end

    def index
      if current_user
        orders = current_user.orders
        render json: orders.as_json
      else
        render json: [], status: :unauthorized
      end
    end

    def show
      order = current_user.orders.find_by(id: params[:id])
      render json: order.as_json
    end
  end
end
