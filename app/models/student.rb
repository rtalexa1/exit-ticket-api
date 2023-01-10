class Student < ApplicationRecord

  validates :first_name, :last_name, :class_id

  belongs_to :class
  has_many :teachers,
    class_name: "User",
    through: :classes

end