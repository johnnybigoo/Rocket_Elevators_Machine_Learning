class Intervention < ApplicationRecord
  belongs_to :employee
  belongs_to :customer
  belongs_to :building
  belongs_to :battery
  belongs_to :column
  belongs_to :elevator
end
