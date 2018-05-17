class Patch < ApplicationRecord
  belongs_to :user
  has_many :patchcategories
  has_many :categories, :through => :patchcategories

  mount_uploader :file, FileUploader

  validates :name, presence: true

  accepts_nested_attributes_for :categories

  def self.newest_patches
    self.order('created_at desc')
  end

  def self.newest_patch
    self.newest_patches.limit(1)[0]
  end
end
