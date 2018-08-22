class TrystsController < ApplicationController
    def index
        @trysts = Tryst.all
        render json: @trysts, status: :ok
    end
    def create
        user = User.find(params[:user])
        tutorship = Tutorship.find(params[:tutorship])
        to_insert = Hash.new
        to_insert[:user] = user
        to_insert[:tutorship] = tutorship
        to_insert[:initialdate] = params[:initialdate]
        to_insert[:finaldate] = params[:finaldate]
        to_insert[:std] = params[:std]
        @trysts = Tryst.create(to_insert)
        render json: @trysts, status: :ok        
    end
end
