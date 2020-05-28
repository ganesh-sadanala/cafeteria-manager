class ChangeDatatypeOfAColumnFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :total_price
    add_column :orders, :total_price, :float
  end
end
