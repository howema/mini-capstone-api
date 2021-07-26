class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total, :orders, :categories, :category_products, :images

  belongs_to :supplier
  has_many :categories
end
