class CreatePlantTable < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string "species"
      t.integer "size"
    end
  end
end
