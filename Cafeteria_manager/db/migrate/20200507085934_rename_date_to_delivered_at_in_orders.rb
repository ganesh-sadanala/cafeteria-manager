class RenameDateToDeliveredAtInOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :date, :delivered_at
  end
end
