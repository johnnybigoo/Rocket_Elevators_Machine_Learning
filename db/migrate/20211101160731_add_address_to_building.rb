class AddAddressToBuilding < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :buildings, :addresses, column: :addressId, primary_key: "id"
  end
end
