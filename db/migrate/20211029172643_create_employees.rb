class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees, id: false do |t|
      t.integer :id, primary_key: true, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :title, null: false
      t.string :email, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
