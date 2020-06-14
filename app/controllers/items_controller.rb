class ItemsController < ApplicationController
  def index
    picker = Item.where(status: 1).order(created_at: :desc).limit(1)
    c = picker[0].category
    b = picker[0].brand_id
    @items_c = Item.includes(:images).where(status: 1).where(category: c).order(created_at: :desc).limit(3)
    @items_b = Item.includes(:images).where(status: 1).where(brand_id: b).order(created_at: :desc).limit(3)
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
