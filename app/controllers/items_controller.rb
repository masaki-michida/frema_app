class ItemsController < ApplicationController
  def index
    @items = Item.order(created_at: :desc).limit(6)
    @items = Item.includes(:images).order('created_at DESC')
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
