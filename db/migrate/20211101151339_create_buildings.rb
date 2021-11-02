class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.bigint :customerId, null: false
      t.bigint :addressId, null: false
      t.string :fullNameAdministrator, null: false
      t.string :emailAdministrator, null: false
      t.string :phoneNumberAdministrator, null: false
      t.string :fullNameTechnicalContact, null: false
      t.string :emailTechnicalContact, null: false
      t.string :phoneTechnicalContact, null: false
      t.timestamps
    end
  end
end
