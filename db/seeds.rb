# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'
# require 'pry'

# plants = RestClient.get("https://trefle.io/api/plants/134444/?token=eXRmc1pvVkZuNTVnRDN1eUR2eFhEQT09")
# plant_hash = JSON.parse(plants)
    # plant_hash["results"].each do |plant|
    #      Plant.find_or_create_by(name: plant["title"], recipe_arr: plant["ingredients"])
# end



i = 1
while i < 50
    plants = RestClient.get("https://trefle.io/api/plants/?page=#{i}&token=ZDlyQXZ2cG1KZktCeEwwWEtrSElOZz09")
    plants_array = JSON.parse(plants)

    plants_array.each do |plant|
        link_id = plant["id"]
       
        #  plant_info = all_plants.map do |id|
        plant_info = RestClient.get("https://trefle.io/api/plants/#{link_id}?token=ZDlyQXZ2cG1KZktCeEwwWEtrSElOZz09")
        plant_hash = JSON.parse(plant_info)

        scientific_name = plant_hash["scientific_name"]
        common_name = plant_hash["common_name"]
        images = plant_hash["images"]
        mature_height = plant_hash["main_species"]["specifications"]["mature_height"]
        bloom_period = plant_hash["main_species"]["seed"]["bloom_period"]
        temperature = plant_hash["main_species"]["growth"]["temperature_minimum"]
        watering = plant_hash["main_species"]["growth"]["precipitation_minimum"]
        leaves = plant_hash["main_species"]["foliage"]["color"]
        flowers = plant_hash["main_species"]["flower"]["common_name"]
        

        if images.length > 0
            Plant.find_or_create_by(scientific_name: scientific_name, common_name: common_name, picture: images[0]["url"], mature_height: mature_height["ft"], bloom: bloom_period, temperature: temperature["deg_f"], water: watering["inches"], foliage_color: leaves, flowers: flowers)
    
        end

       end 
       sleep(3)
    i += 1
end



# binding.pry
# 0 


