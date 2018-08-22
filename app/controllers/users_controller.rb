class UsersController < ApplicationController
    skip_before_action :authorize_request, only: :create
    def index
        @users = User.all
        render json: @users, status: :ok
    end
    def create
        city = City.find(params[:city])
        to_insert = params.permit(:typedocument, :document, :name, :lastname, :birthday, :city, :email, :std, :password)
        to_insert[:city] = city
        @user = User.create!(to_insert)
        auth_token = AuthenticateUser.new(@user.email, @user.password).call
        response = { message: Message.account_created, auth_token: auth_token }
        render json: response, status: :ok
    end
end
