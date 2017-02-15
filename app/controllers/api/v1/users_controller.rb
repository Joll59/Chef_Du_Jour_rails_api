class Api::V1::UsersController < ApplicationController

    def index
      @users = User.all
      render json: @users
    end

  def create
    @user = User.new(user_params)
    if @user.save
    jwt  = Auth.encrypt({ id: @user.id })
        render json: {jwt: jwt, user: @user}
      else render json: { error: "USER_EXISTS" }
    end
  end

  def show
    find_user

  end

  def update
    find_user
  end


  private
  def user_params
    params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :phone_number, :street1, :street2, :city, :state, :zipcode, :chef_biography, :instagram, :personal_website)
  end
end
