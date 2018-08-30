class PatchSerializer < ActiveModel::Serializer
  attributes :id, :name, :file, :game, :original

  has_many :comments
  # has_many :users, :through => :comments
end
