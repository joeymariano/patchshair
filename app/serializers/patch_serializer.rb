class PatchSerializer < ActiveModel::Serializer
  attributes :id, :name, :file, :game, :original, :user_id, :user

  has_many :comments
end
