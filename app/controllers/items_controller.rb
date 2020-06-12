class ItemsController < ApplicationController
  def index
    @items = Item.order(created_at: :desc).limit(6)
  end

  def show
  end

end
