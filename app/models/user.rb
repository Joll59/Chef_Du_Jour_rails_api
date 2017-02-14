class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :dining_experiences

  # validates :name, presence: true, length: { maximum: 50 }
  #   validates :address, presence: true, length: { maximum: 100 }
  #   validates :phone, length: { is: 10 }
  #   validates :user_id, uniqueness: true
end
