class Api::V1::UsersController < ApplicationController

  def index
    render json: {message: "why are you making a GET request to this API?"}
  end

  def create
    @user = User.new(user_params)
    if @user.save
    jwt  = Auth.encrypt({ user_id: @user.id })
        render json: { jwt: jwt, user: @user }
      else render json: { error: "USER_EXISTS" }
    end
  end

  def update
    find_user
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:first_name, :last_name, :phone_number,:street1,:street2,:city,:state,:zipcode,:chef_biography, :email, :password, :password_confirmation, :instagram,:personal_website)
  end
end
