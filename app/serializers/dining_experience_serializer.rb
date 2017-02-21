class DiningExperienceSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :length, :title
  belongs_to :user
  has_many :reservations
  has_many :signature_dishes
end
