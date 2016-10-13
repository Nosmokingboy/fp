class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :requests
  has_many :products

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :firstname, uniqueness: { scope: :lastname }
  validates :factory
  validates :company_name
  validates :address
  validates :zipcode
  validates :city
  validates :country
  validates :activity_field
  validates :job_title
  validates :phone_number
  validates :mobile_number
  validates :company_revenues

  def name
    "#{firstname} #{lastname}"
  end

end
