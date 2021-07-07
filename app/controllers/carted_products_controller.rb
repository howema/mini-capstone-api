class CartedProductsController < ApplicationController
  def create
    carted_product = Carted_product.create!(
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    render json: carted_product.as_json
  end
end
