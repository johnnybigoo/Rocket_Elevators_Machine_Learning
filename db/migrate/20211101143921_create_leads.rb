class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :fullNameContact, null: false
      t.string :compagnyName, null: false
      t.string :email, null: false
      t.string :phoneNumber, null: false
      t.string :nameProject, null: false
      t.string :descriptionProject, null: false
      t.string :department, null: false
      t.string :message, null: false
      t.binary :file, null: false
      t.datetime :date, null: false
      t.timestamps
    end
  end
end
