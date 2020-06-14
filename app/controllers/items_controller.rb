class ItemsController < ApplicationController
  def index
    binding.pry
    pick_latest_item = Item.where(status: 1).order(created_at: :desc).limit(1)
    c = pick_latest_item[0].category
    items = Item.where(status: 1).order(created_at: :desc).limit(1)
    b = pick_latest_item[0].brand
    @items_c = Item.includes(:images).where(status: 1).where(category: c).order(created_at: :desc).limit(3)
    @items_b = Item.includes(:images).where(status: 1).where(brand: b).order(created_at: :desc).limit(3)
  end

  def show
  end
end
