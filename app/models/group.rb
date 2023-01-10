class Group < ApplicationRecord

  validates :name, :user_id, presence: true

  belongs_to :teacher,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  has_many :group_enrollments
  has_many :students,
    through: :group_enrollments
end