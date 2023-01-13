class Assignment < ApplicationRecord

  validates :exit_ticket_id, :question_id, presence: true

  belongs_to :exit_ticket
  belongs_to :question
end