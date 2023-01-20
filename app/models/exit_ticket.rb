class ExitTicket < ApplicationRecord

  validates :user_id, :title, :grade_level, :subject_area, presence: true

  belongs_to :user
  has_many :reflection_exit_ticket_questions
  has_many :reflection_questions, 
    through: :reflection_exit_ticket_questions
  has_many :standards_based_exit_ticket_questions
  has_many :standards_based_questions, 
    through: :standards_based_exit_ticket_questions
end
