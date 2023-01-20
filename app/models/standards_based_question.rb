class StandardsBasedQuestion < ApplicationRecord

  validates :student_expectation, presence: true

  has_many :exit_ticket_questions
  has_one_attached :images
end
