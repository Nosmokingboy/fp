class Product < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :product_keywords
  has_many :keywords, through: :product_keywords

  validates :user, presence: true
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :material, presence: true
  validates :keywords, presence: true
end
