class ItemsController < ApplicationController
  def index
    c = Item.where(status: 1).order(created_at: :desc).limit(1).category
    b = Item.where(status: 1).order(created_at: :desc).limit(1).brand
    @items_c = Item.includes(:images).where(status: 1).where(category: c).order(created_at: :desc).limit(3)
    @items_b = Item.includes(:images).where(status: 1).where(brand: b).order(created_at: :desc).limit(3)
  end

  def show
  end
end
