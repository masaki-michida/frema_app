class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).where(status: 1).order(created_at: :desc).limit(6)
  end

  def show
  end
end
