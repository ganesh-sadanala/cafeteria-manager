class RemoveColumnsFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :place_order, :boolean
    remove_column :orders, :order_delivered, :boolean
  end
end
