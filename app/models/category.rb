class Category < ApplicationRecord
  has_many :items
  belongs_to :sub_category
end
