class Plant < ApplicationRecord

    has_many :garden_plants
    has_many :gardens, through: :garden_plants
    
    # def self.search(search)
    #     if search
    #         self.where(name: search)
    #     else
    #         Plant.all
    #     end
    # end

end
