class TutorshipsController < ApplicationController
    def index
        @tutorships = Tutorship.all
        render json: @tutorships, status: :ok
    end
    def create
        user = User.find(params[:user])
        course = Course.find(params[:course])
        to_insert = Hash.new
        to_insert[:user] = user
        to_insert[:course] = course
        to_insert[:std] = params[:std]
        @turoships = Tutorship.create(to_insert)
        render json: @turoships, status: :ok
    end
end
