class Garden < ApplicationRecord

    has_many :garden_plants
    has_many :plants, through: :garden_plants
    belongs_to :user

    validates :name, presence: true, uniqueness: true
    
 
    
    





end
