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
  validates :factory, presence: true
  validates :company_name, presence: true
  validates :address, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :activity_field, presence: true
  validates :job_title, presence: true
  validates :phone_number, presence: true
  validates :mobile_number, presence: true
  validates :company_revenues, presence: true

  def name
    "#{firstname} #{lastname}"
  end

end
