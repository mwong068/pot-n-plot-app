class GardenPlant < ApplicationRecord

    belongs_to :plant
    belongs_to :garden
   
    validate :plants_length

    def plants_length
      if self.garden.plants.count == 9
        errors.add(:garden_id, :blank, message: "cannot have more than 9 plants")
      end 


    end
    
    
   

   
end
