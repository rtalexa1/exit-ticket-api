class StandardsBasedQuestion < ApplicationRecord

  validates :student_expectation, presence: true

  has_many :standards_based_exit_ticket_questions
  has_one_attached :image
end
