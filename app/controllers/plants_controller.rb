class PlantsController < ApplicationController

    def index
        @plants = Plant.all
        byebug
    end 

    def show
        @plant = Plant.find(params[:id])
        byebug
    end 
end
