class ReflectionQuestion < ApplicationRecord

  validates :text, presence: true

  has_many :reflection_exit_ticket_questions
end
