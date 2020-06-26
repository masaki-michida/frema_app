class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :images, dependent: :destroy

  validates :name, :status, :statement, :category_id, :prefecture_id, :user_id ,:condition, :delivery_fee , :lag, presence: true
  validates :price, presence: true, numericality: {only_integer: true ,greater_than: 300}
  validates_associated :images
  validates :images, presence: true

  accepts_nested_attributes_for :images, allow_destroy: true
end
