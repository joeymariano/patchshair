class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :patch_id, :username

  belongs_to :user
  belongs_to :patch
end
