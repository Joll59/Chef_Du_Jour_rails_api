class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = Auth.encrypt(id: user.id)
      render json: { jwt: jwt, user: user }
    end
  end

end
