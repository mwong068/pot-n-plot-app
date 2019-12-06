class Garden < ApplicationRecord

    has_many :garden_plants
    has_many :plants, through: :garden_plants
    belongs_to :user

    validates :name, presence: true, uniqueness: true
    # validate :validate_plants_length

    # def validate_plants_length
    #   if self.garden_plants.length > 9 
    #       errors.add("You can only have up to 9 plants in your garden")
    #   end 
    # end 
    
    





end
