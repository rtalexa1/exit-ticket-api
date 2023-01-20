class StandardsBasedExitTicketQuestion < ApplicationRecord

  validates :exit_ticket_id, :sb_question_id, presence: true

  belongs_to :exit_ticket
  belongs_to :standards_based_question,
    foreign_key: :sb_question_id
end
