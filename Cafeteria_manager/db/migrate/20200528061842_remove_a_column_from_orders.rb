class RemoveAColumnFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :add_to_cart
  end
end
