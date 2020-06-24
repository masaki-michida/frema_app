class Image < ApplicationRecord
  mount_uploader :content, ImageUploader
  belongs_to :item, inverse_of: :images
  validates :content,presence: true
end
