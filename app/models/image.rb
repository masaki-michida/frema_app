class Image < ApplicationRecord
  mount_uploader :content, ImageUploader
  belongs_to :item
  validates :content,presence: true
end
