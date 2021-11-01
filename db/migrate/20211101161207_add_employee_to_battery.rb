class AddEmployeeToBattery < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :batteries, :employees, column: :employeeId, primary_key: "id"
  end
end
