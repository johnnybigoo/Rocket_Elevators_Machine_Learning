class CreateFactQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_quotes do |t|
      t.bigint :quoteId, null: false
      t.datetime :creation_date, null: false
      t.string :compagnyName, null: false
      t.string :email, null: false
      t.integer :nbElevator, null: false
    end
  end
end
