class AddUserToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :employees, :users, column: :email, primary_key: "email"
  end
end
