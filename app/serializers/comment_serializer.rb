class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :patch_id

  has_one :user
  has_one :patch
  belongs_to :user
  belongs_to :patch
end
