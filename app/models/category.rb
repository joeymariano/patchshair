class Category < ApplicationRecord
  has_many :patchcategories
  has_many :patches, :through => :patchcategories
end
