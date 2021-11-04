class CreateFactContact < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_contacts do |t|
      t.bigint :contactId, null: false
      t.datetime :creation_date, null: false
      t.string :compagnyName, null: false
      t.string :email, null: false
      t.string :nameProject, null: false
    end
  end
end
