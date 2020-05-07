class OrdersController < ApplicationController
  def create
    item_ids = params[:item_ids]
    clean_item_ids = item_ids - [nil]
    Order.create_order_and_order_items(current_user.id, clean_item_ids)
    redirect_to menus_path
  end
end
