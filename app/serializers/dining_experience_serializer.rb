class DiningExperienceSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :length
end
