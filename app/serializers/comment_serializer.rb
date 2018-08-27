class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :patch_id
end
