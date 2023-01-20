class ReflectionQuestion < ApplicationRecord

  validates :text, presence: true

  has_many :exit_ticket_questions
end
