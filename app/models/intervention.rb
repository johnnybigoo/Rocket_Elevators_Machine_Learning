class Intervention < ApplicationRecord
  after_create :create_ticket

  belongs_to :employee
  belongs_to :customer
  belongs_to :building
  belongs_to :batterie
  belongs_to :column
  belongs_to :elevator

  enum status: { pending: 0, incomplete: 1, complete: 2 }

  def create_ticket
    Zendesk.new(self).intervention_ticket
  end
end
