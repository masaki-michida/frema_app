class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :images, dependent: :destroy

  validates :name, :status, :price, :statement, :category_id, :prefecture_id, :user_id ,:condition, :delivery_fee , :lag, presence: true

  validates_associated :images

  accepts_nested_attributes_for :images, allow_destroy: true
end
