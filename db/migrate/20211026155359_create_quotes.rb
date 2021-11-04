class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes,id: false do |t|
      t.integer :id, primary_key: true, null: false
      t.string :type_building, null: false
      t.integer :numApartment
      t.integer :numFloor
      t.integer :numElevator
      t.integer :numOccupant
      t.string :compagnyName
      t.string :email

      t.timestamps
    end
  end
end
