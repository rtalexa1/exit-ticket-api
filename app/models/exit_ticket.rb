class ExitTicket < ApplicationRecord

  validates :user_id, :title, :grade_level, :subject_area, presence: true

  belongs_to :user
  has_many :assignments
  has_many :reflection_questions,
    through: :assignments

end
