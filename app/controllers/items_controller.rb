class ItemsController < ApplicationController

  def index
    picker = Item.where(status: 1).order(created_at: :desc).limit(1)
    c = picker[0].category_id
    b = picker[0].brand_id
    @items_c = Item.includes(:images).where(status: 1).where(category: c).order(created_at: :desc).limit(3)
    @items_b = Item.includes(:images).where(status: 1).where(brand_id: b).order(created_at: :desc).limit(3)
  end

  def show
    @item = Item.find(params[:id])
    @category = Category.find(@item.category_id)
    @subcategory = SubCategory.find(@category.sub_category_id)
    @topcategory = TopCategory.find(@subcategory.top_category_id)
    @previous = Item.where(id: params[:id].to_i + 1..Float::INFINITY).where(status: 1).limit(1)[0]
    @next = Item.where(id: -Float::INFINITY..params[:id].to_i - 1).where(status: 1).limit(1)[0]
  end

  def new
    @item = Item.new
    @item.images.new
    @categories = Category.pluck(:name,:id)
    @brands = Brand.pluck(:name,:id)
    @prefectures = Prefecture.pluck(:name,:id)
  end

  def create
    @item = Item.new(item_params)
    if @item.images[0]&&@item.save
      redirect_to item_path(@item.id)
    else
      render :new
    end
  end

  def edit
    @item = Item.includes(:images).find(params[:id])
    @categories = TopCategory.pluck(:name,:id)
    @brands = Brand.pluck(:name,:id)
    @prefectures = Prefecture.pluck(:name,:id)
    @destroy = ""
  end

  def update
    @item = Item.includes(:images).find(params[:id])
    if @item.images[0]&&@item.update(item_params)
      redirect_to item_path(params[:id])
    else
      render :new
    end
  end

  def destroy
    Item.find(params[:id]).delete
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(
      :name, :status, :price,
      :statement,
      [:category_id, :id], [:prefecture_id, :id],
      [:brand_id, :id],:condition, :delivery_fee ,
      :lag, images_attributes: [:content, :_destroy, :id],
    ).merge(
      user_id: current_user.id,
      status: 1
    )
  end

end
