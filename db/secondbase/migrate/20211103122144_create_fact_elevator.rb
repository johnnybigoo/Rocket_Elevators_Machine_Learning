class CreateFactElevator < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_elevators do |t|
      t.string :serialNumber, null: false
      t.datetime :dateCommissioning, null: false
      t.bigint :buildingId, null: false
      t.bigint :customerId, null: false
      t.string :city, null: false
    end
  end
end
