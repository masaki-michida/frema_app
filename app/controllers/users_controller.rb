class UsersController < ApplicationController
  def show
    @user = current_user
    @items = Item.where(user_id: current_user.id)
    # @user = User.find(params[:id])
  end
end
