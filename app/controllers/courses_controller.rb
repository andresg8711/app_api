class CoursesController < ApplicationController
  def index
    @courses = Course.all
    render json: @courses, status: :ok
  end
  def create
    puts params.permit(:nombre)
    @course = Course.create(params.permit(:nombre))
    render json: @course.errors.full_messages, status: :ok
  end
end
