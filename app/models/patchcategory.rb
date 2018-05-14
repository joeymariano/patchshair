class Patchcategory < ApplicationRecord
  belongs_to :patch
  belongs_to :category
end
