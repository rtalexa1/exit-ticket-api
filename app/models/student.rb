class Student < ApplicationRecord

  validates :first_name, :last_name, presence: true

  has_many :group_enrollments
  has_many :groups, through: :group_enrollments
  has_many :teachers,
    class_name: "User",
    through: :groups

end