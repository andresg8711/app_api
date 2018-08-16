class CommentsController < ApplicationController
    def index
        # @city = City.find(1)
        # render json: @city.user_ids
        @user= User.find(params[:user_id])
        
        render json: @user.userr_ids, status: :ok

        # puts @users.trysts
        # @comments= Comment.find()
    end
end
