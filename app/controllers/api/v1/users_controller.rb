class Api::V1::UsersController < ApplicationController

  def index
    puts  "yay!"
  end

  def create
    @user = User.new(user_params)
    if @user.save
    jwt  = Auth.encrypt({user_id: @user.id})
        render json: {jwt: jwt, name: @user.name}
    end
  end


  private

  def user_params
    params.require(:user)permit(:first_name, :last_name, :email, :password, :password_confirmation, :phone_number, :street1, :street2, :city, :state, :zipcode, :chef_biography, :instagram, :personal_website)
  end
end
