class PatchSerializer < ActiveModel::Serializer
  attributes :id, :name, :file, :game, :original, :user_id

  has_many :comments
  belongs_to :user
end
