class User < ApplicationRecord
  has_many :patches

  has_secure_password

  validates_confirmation_of :password
  validates :username, presence: true, length: { minimum: 4}
  validates :username, uniqueness: true
  validates :password, length: { in: 6..30 }

  def self.newest_users
    self.order('created_at desc')
  end

  def self.newest_user
    self.newest_users.limit(1)[0]
  end

  def self.three_or_more
    self.all.select do |u|
       u.patches.count >= 3
    end
  end
end
