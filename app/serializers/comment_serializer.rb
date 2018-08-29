class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :patch_id

  belongs_to :user
  belongs_to :patch
end
