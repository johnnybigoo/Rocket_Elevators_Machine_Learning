class AddCustomerToBuilding < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :buildings, :customers, column: :customerId, primary_key: "id"
  end
end
