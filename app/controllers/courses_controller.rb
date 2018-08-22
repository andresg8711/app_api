class CoursesController < ApplicationController
  def index
    @courses = Course.all
    render json: @courses, status: :ok
  end
  def create
    puts params.permit(:name, :std)
    @course = Course.create!(params.permit(:name, :std))
    render json: @course, status: :ok
  end
end
