class CitiesController < ApplicationController
    def index
        @cities = City.all
        render json: @cities, status: :ok
      end
      def create
        puts params.permit(:code, :name, :department)
        @cities = City.create(params.permit(:code, :name, :department))
        render json: @cities, status: :ok
      end
end
