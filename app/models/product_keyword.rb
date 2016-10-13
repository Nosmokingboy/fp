class ProductKeyword < ApplicationRecord
  belongs_to :keyword
  belongs_to :product
  validates :keyword, presence: true
  validates :product, presence: true
  validates :product, uniqueness: { scope: :keyword }
end
