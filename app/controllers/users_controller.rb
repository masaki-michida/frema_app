class UsersController < ApplicationController
  
  def show
    # @user = User.find(params[:id])
    # @user = User.find_by(id: params[:id])
    # @user = User.find(current_user.id)
  # rescue ActiveRecord::RecordNotFound
    @user = current_user
  end
end
