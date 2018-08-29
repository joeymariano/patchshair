class PatchSerializer < ActiveModel::Serializer
  attributes :id, :name, :file, :game, :original

  has_many :comments
end
