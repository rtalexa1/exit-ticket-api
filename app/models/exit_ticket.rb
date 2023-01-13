class ExitTicket < ApplicationRecord

  validates :user_id, :title, :grade_level, :subject_area, :question_one_id, presence: true

  belongs_to :user

end
