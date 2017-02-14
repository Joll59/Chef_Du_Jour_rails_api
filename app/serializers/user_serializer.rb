class UserSerializer < ActiveModel::Serializer
  attributes: except: [:created_at, :password_digest, :updated_at]
end
