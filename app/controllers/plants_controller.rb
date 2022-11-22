class PlantsController < ApplicationController
    
    def index
        plant = Plant.all
        render json: plant
    end
    def show
        plants = Plant.find_by_id(params[:id])
        if plants
            render json: plants
        else
            render json: {error: "Plant not found"}, status: :not_found
        end
    end

    def create
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plant, status: :created
      end
end
