class Question < ApplicationRecord

  validates :text, :exit_ticket_id, presence: true

  belongs_to :exit_ticket
end
