class Manga < ApplicationRecord
  
  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
