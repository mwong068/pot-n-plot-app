class GardenPlantsController < ApplicationController


    def create
        @garden_plant = GardenPlant.create(garden_plant_params)
        # @garden_plant.garden.plants << @garden_plant.plant
        # @garden_plant.garden.save
        redirect_to @garden_plant.garden
           
                 
    end

    def update

    end 

    def destroy
        @garden = Garden.find(params[:id])
        @garden_plant = GardenPlant.where(plant_id: params[:garden_plant][:plant_id],garden_id: params[:id])
        @garden_plant[0].destroy
        redirect_to @garden
    end 

    private

    def garden_plant_params
        params.require(:garden_plant).permit(:garden_id, :plant_id)
    end



end