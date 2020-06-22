class OrderItemsController < ApplicationController
  def create
  end

  def destroy
    id = params[:id]
    menu_id = params[:menu_id]
    OrderItem.find(id).delete
    redirect_to menu_path(menu_id)
  end
end
