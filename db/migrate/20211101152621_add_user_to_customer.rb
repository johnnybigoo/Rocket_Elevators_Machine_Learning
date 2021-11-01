class AddUserToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :customers, :users, column: :userId, primary_key: "id"
  end
end
