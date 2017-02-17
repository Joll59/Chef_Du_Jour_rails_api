class DiningExperienceSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :length
  belongs_to :user
  has_many :reservations
end
