class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.bigint :columnId, null: false
      t.string :serialNumber, null: false
      t.string :model, null: false
      t.string :type, null: false
      t.string :status, null: false
      t.datetime :dateCommissioning, null: false
      t.datetime :dateLastInspection, null: false
      t.string :certificateOperations, null: false
      t.string :information, null: false
      t.string :notes, null: false
      t.timestamps
    end
  end
end
