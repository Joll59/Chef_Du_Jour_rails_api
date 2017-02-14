class User < ApplicationRecord
  has_secure_password
  #User.first.chef_created_experiences
  #User as Creator of a dining experience
  has_many :chef_created_experiences, foreign_key: "user_id", class_name: "DiningExperience"

  has_many :reservations


  #User as Consumer
  has_many :dining_experiences, through: :reservations



  # validates :name, presence: true, length: { maximum: 50 }
  #   validates :address, presence: true, length: { maximum: 100 }
  #   validates :phone, length: { is: 10 }
  #   validates :user_id, uniqueness: true
end
