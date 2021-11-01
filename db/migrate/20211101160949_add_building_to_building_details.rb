class AddBuildingToBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :building_details, :buildings, column: :buildingId, primary_key: "id"
  end
end
