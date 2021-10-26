class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes,id: false do |t|
      t.string :type_building,primary_key: true, null: false
      t.integer :numApartment
      t.integer :numFloor
      t.integer :numElevator
      t.integer :numOccupant

      t.timestamps
    end
  end
end
