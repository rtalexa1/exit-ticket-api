class User < ApplicationRecord

  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  has_many :exit_tickets
end