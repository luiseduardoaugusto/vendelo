class Product < ApplicationRecord
  has_one_attached :photo
  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :title, uniqueness: true
end
