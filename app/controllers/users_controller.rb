class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, status: :ok
    end
    def create
        city = City.find(params[:city])
        to_insert = params.permit(:typedocument, :document, :name, :lastname, :birthday, :city, :email, :std)
        to_insert[:city] = city
        @user = User.create(to_insert)
        render json: @user, status: :ok
      end
end
