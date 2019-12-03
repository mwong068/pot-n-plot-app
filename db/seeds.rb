# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# plants = RestClient.get("https://trefle.io/api/plants/134444/?token=eXRmc1pvVkZuNTVnRDN1eUR2eFhEQT09")
# plant_hash = JSON.parse(plants)
    # plant_hash["results"].each do |plant|
    #      Plant.find_or_create_by(name: plant["title"], recipe_arr: plant["ingredients"])
# end

require 'rest-client'
require 'json'
require 'pry'
# i = 1
# plant_hash = {}
# 7.times do 
    # plants = RestClient.get("https://trefle.io/api/plants/?page=#{i}&token=ZDlyQXZ2cG1KZktCeEwwWEtrSElOZz09")
    # plants_array = JSON.parse(plants)
    

    # all_plants = plants_array.map do |plant|
    #     link_id = plant["id"]
    #     plant_hash = {link_id: link_id}
    #    end 
    

    # plant_info = all_plants.map do |id|
    #     foliage = RestClient.get("https://trefle.io/api/plants/#{id[:link_id]}?token=ZDlyQXZ2cG1KZktCeEwwWEtrSElOZz09")
    #     foliage_hash = JSON.parse(foliage)
        
    #     end 

    # plant_info. map do |element|


    # i += 1
# end 

#     all_plants.each do |plant| 
#                Plant.create(plant)
#             end 
#             sleep(3)
       
# end 
plants = RestClient.get("https://trefle.io/api/plants/157790?token=ZDlyQXZ2cG1KZktCeEwwWEtrSElOZz09")
plant_hash = JSON.parse(plants)


binding.pry
0 


