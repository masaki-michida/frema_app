class PurchaseController < ApplicationController
  require 'payjp'

  def index
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = Rails.application.credentials.payjp[:payjp_private_key]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
      @item = Item.find(params[:item_id])
    end
  end

  def pay
    @item = Item.includes(:images).find(params[:item_id])
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = Rails.application.credentials.payjp[:payjp_private_key]
    Payjp::Charge.create(
    :amount => @item.price,
    :customer => card.customer_id,
    :currency => 'jpy',
  )
  redirect_to action: 'done'
  end

  def done
    @item = Item.includes(:images).find(params[:item_id])
    @item.update(status: 2)
  end

end
