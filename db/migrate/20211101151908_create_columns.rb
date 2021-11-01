class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.bigint :batteryId, null: false
      t.string :type, null: false
      t.string :numberFloorServed, null: false
      t.string :status, null: false
      t.string :information, null: false
      t.string :notes, null: false
      t.timestamps
    end
  end
end
