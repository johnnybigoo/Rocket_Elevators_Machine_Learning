class AddAddressToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :customers, :addresses, column: :addressId, primary_key: "id"
  end
end
