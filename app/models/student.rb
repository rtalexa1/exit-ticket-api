class Student < ApplicationRecord

  validates :first_name, :last_name, :group_id, presence: true

  belongs_to :group
  has_many :teachers,
    class_name: "User",
    through: :groups

end