class AddBatteryToColumn < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :columns, :batteries, column: :batteryId, primary_key: "id"
  end
end
