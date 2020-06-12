class ItemsController < ApplicationController
  def index
    @items = Item.include(:images).where(status: 1).order(created_at: :desc).limit(6)
  end
end
