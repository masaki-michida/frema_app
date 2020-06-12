class SubCategory < ApplicationRecord
  has_many :categories
  belongs_to :top_category
end
