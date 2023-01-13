class Question < ApplicationRecord

  validates :text, presence: true

  belongs_to :exit_ticket
end
