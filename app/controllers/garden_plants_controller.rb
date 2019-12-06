class GardenPlantsController < ApplicationController


    def create
        @garden = Garden.find(garden_plant_params[:garden_id])
        @garden_plant = GardenPlant.new(garden_plant_params)
        
        if @garden_plant.valid?
            @garden_plant.save
        
            redirect_to garden_path(@garden)
        else 
            flash[:errors] = @garden_plant.errors.full_messages
            redirect_to garden_path(@garden)
        end 
        # @garden_plant.garden.plants << @garden_plant.plant
        # @garden_plant.garden.save
        
            
          
                 
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