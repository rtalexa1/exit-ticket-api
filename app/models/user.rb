class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, 
    :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  validates :email, presence: true
  validates :email, uniqueness: true

  has_many :exit_tickets
end