class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :building_details do |t|
      t.bigint :buildingId, null: false
      t.string :informationKey, null: false
      t.string :value, null: false
      t.timestamps
    end
  end
end
