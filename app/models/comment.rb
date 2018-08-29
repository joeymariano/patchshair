class Comment < ApplicationRecord
  has_one :user
  has_one :patch
  belongs_to :user
  belongs_to :patch
end
