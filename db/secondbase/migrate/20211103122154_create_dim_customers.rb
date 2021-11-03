class CreateDimCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_customers do |t|
      t.datetime :creation_date, null: false
      t.string :compagnyName, null: false
      t.string :fullNameContact, null: false
      t.string :email, null: false
      t.integer :nbElevator, null: false
      t.string :city, null: false
    end
  end
end
