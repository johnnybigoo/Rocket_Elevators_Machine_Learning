class AddColumnToElevator < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :elevators, :columns, column: :columnId, primary_key: "id"
  end
end
