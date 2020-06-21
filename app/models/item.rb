class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :images

  validates :name, :status, :price, :statement, :category_id, :prefecture_id, :brand_id, :user_id ,:condition, :delivery_fee , :lag, presence: true

  accepts_nested_attributes_for :images, allow_destroy: true
end
