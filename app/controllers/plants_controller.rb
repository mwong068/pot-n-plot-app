class PlantsController < ApplicationController
    
    def index
        if params[:query]
            @search = params[:query].downcase
            @plants = Plant.all.where("Lower(common_name) LIKE ?", "%#{@search}%")
            
        else
            @plants = Plant.all
        end
    end

    def show
        @plant = Plant.find(params[:id])
        @garden_plant = GardenPlant.new
    end
    
    
end
