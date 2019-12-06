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

    end 

    private

    def garden_plant_params
        params.require(:garden_plant).permit(:garden_id, :plant_id)
    end



end