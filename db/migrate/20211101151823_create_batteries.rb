class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.bigint :buildingId, null: false
      t.string :type, null: false
      t.string :status, null: false
      t.integer :employeeId, null: false
      t.datetime :dateCommissioning, null: false
      t.datetime :dateLastInspection, null: false
      t.string :certificateOperations, null: false
      t.string :information, null: false
      t.string :notes, null: false
      t.timestamps
    end
  end
end
