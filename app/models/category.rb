class Category < ApplicationRecord
  has_many :patchcategories
  has_many :patches, :through => :patchcategories

  validates :name, uniqueness: true
end
