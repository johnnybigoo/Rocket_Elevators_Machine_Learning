class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.references :employee, foreign_key: true, type: :integer 
      t.references :customer, foreign_key: true
      t.references :building, foreign_key: true
      t.references :batterie, foreign_key: true
      t.references :column, foreign_key: true
      t.references :elevator, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :result, default: "Incomplete" 
      t.text :report
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
