class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :picture
      t.string :description

      t.timestamps
    end
  end
end
