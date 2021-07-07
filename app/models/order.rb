class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  has_many :carted_products
  belongs_to :user_id
  has_many :users, through: :carted_products
  has_many :products, through: :carted_products
end
