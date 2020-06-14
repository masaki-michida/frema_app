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
    @items = Item.order(created_at: :desc).limit(6)
    @items = Item.includes(:images).order('created_at DESC')
  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, images_attributes: [:content])
  end
end
