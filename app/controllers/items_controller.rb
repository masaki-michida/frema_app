class ItemsController < ApplicationController

  def index
    picker = Item.where(status: 1).order(created_at: :desc).limit(1)
    c = picker[0].category_id
    b = picker[0].brand_id
    @items_c = Item.includes(:images).where(status: 1).where(category: c).order(created_at: :desc).limit(3)
    @items_b = Item.includes(:images).where(status: 1).where(brand_id: b).order(created_at: :desc).limit(3)
  end

  def show
    @item = Item.includes(:images).find(params[:id])
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
    @item = Item.find(params[:id])
    @categories = TopCategory.pluck(:name,:id)
    @brands = Brand.pluck(:name,:id)
    @prefectures = Prefecture.pluck(:name,:id)
    @destroy = ""
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to root_path
    else
      render :new
    end
    redirect_to item_path(params[:id])
  end

  def destroy
    Item.find(params[:id]).delete
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :status, :price, :statement, [:category_id, :id], [:prefecture_id, :id], [:brand_id, :id],[:user_id, :id],:condition, :delivery_fee , :lag, images_attributes: [:content])
  end

end
