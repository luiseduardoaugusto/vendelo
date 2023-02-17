class Product < ApplicationRecord
  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :title, uniqueness: true
end
