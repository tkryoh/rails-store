class Product < ApplicationRecord
  has_one_attached :featured_image
  has_rich_text :description

  validates :name, presence: true
  validates :inventory_count, numericarity: { greater_than_or_equal_to: 0 }
end
