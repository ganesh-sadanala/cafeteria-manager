class MenuItemsController < ApplicationController
  def create
    id = params[:menu_id]
    item_name = params[:menu_item_name]
    item_price = params[:menu_item_price]
    MenuItem.create!(menu_id: id, menu_item_name: item_name, menu_item_price: item_price)
    redirect_to menus_path
  end
end
