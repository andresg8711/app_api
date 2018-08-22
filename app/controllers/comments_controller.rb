class CommentsController < ApplicationController
    def index
        @user= User.find(params[:user_id])
        render json: @user.userr_ids, status: :ok
    end
end
