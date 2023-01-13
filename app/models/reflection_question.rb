class ReflectionQuestion < ApplicationRecord

  validates :text, presence: true

  has_many :assignments
  has_many :exit_tickets,
    through: :assignments
end
