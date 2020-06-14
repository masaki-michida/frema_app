class ItemsController < ApplicationController

  def index
    @items = Item.order(created_at: :desc).limit(6)
    @items = Item.includes(:images).order('created_at DESC')
  end

  def new
    @item = Item.new
    @item.images.new
    @categories = TopCategory.pluck(:name,:id)
    @brands = Brand.pluck(:name,:id)
    @prefectures = Prefecture.pluck(:name,:id)
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
    params.require(:item).permit(:name, :status, :price, :statement, [:category_id, :id], [:prefecture_id, :id], [:brand_id, :id],[:user_id, :id],:condition, :delivery_fee , :lag, images_attributes: [:content])
  end
end
