class ItemsController < ApplicationController
  def index
    items_c = Item.where(status: 1).order(created_at: :desc).limit(1)
    c = items_c[0].category
    items = Item.where(status: 1).order(created_at: :desc).limit(1)
    b = items_c[0].brand_id
    @items_c = Item.includes(:images).where(status: 1).where(category: c).order(created_at: :desc).limit(3)
    @items_b = Item.includes(:images).where(status: 1).where(brand: b).order(created_at: :desc).limit(3)
  end

  def show
  end
end
