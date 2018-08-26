class Comment < ApplicationRecord
  belongs_to :patch
  belongs_to :user
end
