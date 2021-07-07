class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :subtotal, :tax, :total, :money_math

  has_many :carted_products
end
