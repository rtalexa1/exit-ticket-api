class ReflectionExitTicketQuestion < ApplicationRecord

  validates :exit_ticket_id, :ref_question_id, presence: true

  belongs_to :exit_ticket
  belongs_to :reflection_question,
    foreign_key: :ref_question_id
end
