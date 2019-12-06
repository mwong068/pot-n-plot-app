class AddPictureAliasToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :picture_alias, :string
  end
end
