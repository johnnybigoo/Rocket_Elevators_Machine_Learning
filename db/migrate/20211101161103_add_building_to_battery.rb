class AddBuildingToBattery < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :batteries, :buildings, column: :buildingId, primary_key: "id"
  end
end
