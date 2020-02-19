class Manga < ApplicationRecord
  
  has_many :tags
  accepts_nested_attributes_for :tags

  def self.t_split(tags)
    tags = tags.split("#")
    tags.drop(1)
  end
  mount_uploader :image, ImageUploader
end
