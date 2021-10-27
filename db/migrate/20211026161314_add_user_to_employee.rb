class AddUserToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :employees, :users, column: :user_id, primary_key: "id"
  end
end
