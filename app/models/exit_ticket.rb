class ExitTicket < ApplicationRecord

  validates :user_id, :title, :grade_level, :subject_area, :question_one_id, presence: true

  belongs_to :user

  def get_question(question_id, question_type)
    question_type.find(question_id)
  end

end
