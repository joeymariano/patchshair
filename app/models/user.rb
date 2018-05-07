class User < ApplicationRecord
  has_many :patches

  has_secure_password
  validates_confirmation_of :password
end
