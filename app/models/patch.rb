class Patch < ApplicationRecord
  belongs_to :user
  has_many :patchcategories
  has_many :categories, :through => :patchcategories

  mount_uploader :file, FileUploader

  validates :name, presence: true
end
