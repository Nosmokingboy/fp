class Keyword < ApplicationRecord
  has_many :product_keywords
  has_many :products, through: :product_keywords
  validates :name, presence: true
  validates :name, uniqueness: true
end
