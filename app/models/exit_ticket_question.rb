class ExitTicketQuestion < ApplicationRecord

  validates :exit_ticket_id, :question_id, presence: true

  belongs_to :exit_ticket
  belongs_to :reflection_question
  belongs_to :standards_based_question

end
