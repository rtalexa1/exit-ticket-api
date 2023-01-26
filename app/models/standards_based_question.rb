class StandardsBasedQuestion < ApplicationRecord

  validates :student_expectation, presence: true

  has_many :standards_based_exit_ticket_questions
  has_one_attached :image

  def self.find_by_student_expectation(student_expectation)
    StandardsBasedQuestion.where("student_expectation LIKE ?", "#{student_expectation}%")
  end

  def image_url
    Rails.application.routes.url_helpers.url_for(self.image)
  end
end
