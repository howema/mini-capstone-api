class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: true

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
