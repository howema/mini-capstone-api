class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :supplier
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  # def supplier
  #   Suppiler.find_by(id: supplier_id)
  # end

  belongs_to :supplier

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
