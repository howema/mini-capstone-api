class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current,
    )

    render json: carted_product.as_json
  end
end
