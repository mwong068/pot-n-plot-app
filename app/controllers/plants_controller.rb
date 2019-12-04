class PlantsController < ApplicationController
    def index
        @plants = Plant.all 
    end

    def show
        @plant = Plant.find(params[:id])
        @garden_plant = GardenPlant.new
    end
    
end
