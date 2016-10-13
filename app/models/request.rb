class Request < ApplicationRecord
  belongs_to :product
  belongs_to :factory, class_name: "User"
  belongs_to :buyer, class_name: "User"

  validates :quantity, presence: true
  validates :description, presence: true
  validates :product, presence: true
  validates :buyer, presence: true
  validates :product, uniqueness: { scope: :buyer }

end
