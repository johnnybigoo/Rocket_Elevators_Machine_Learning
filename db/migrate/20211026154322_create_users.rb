class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users,id: false do |t|
      t.string :email, primary_key: true, null: false
      t.text :password, null: false
      t.datetime :date_created, null: false

      t.timestamps
    end
  end
end
