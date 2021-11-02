class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :userId, null: false
      t.datetime :dateCreation, null: false
      t.string :compagnyName, null: false
      t.bigint  :addressId, null: false
      t.string :fullName, null: false
      t.string :contactPhone, null: false
      t.string  :email, null: false
      t.string :description, null: false
      t.string :fullNameTechnicalAuthority, null: false
      t.string :technicalAuthorityPhone, null: false
      t.string :technicalAuthorityEmail, null: false
      t.timestamps
    end
  end
end
