class User < ApplicationRecord
  has_many :patches

  has_secure_password

  validates_confirmation_of :password
  validates :username, presence: true, length: { minimum: 4 }
  validates :username, uniqueness: true
  validates :password, length: { in: 6..30 }
end
