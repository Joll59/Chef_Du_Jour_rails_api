class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone_number, :email, :street1, :street2, :city, :state, :zipcode, :chef_biography, :instagram, :personal_website

end
