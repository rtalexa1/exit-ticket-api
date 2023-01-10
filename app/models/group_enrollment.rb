class GroupEnrollment < ApplicationRecord

  validates :group_id, :student_id, presence: true

  belongs_to :group
  belongs_to :student
end