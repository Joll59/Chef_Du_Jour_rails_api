class SignatureDishSerializer < ActiveModel::Serializer
  attributes :id, :image_url
  belongs_to :dining_experience
end
