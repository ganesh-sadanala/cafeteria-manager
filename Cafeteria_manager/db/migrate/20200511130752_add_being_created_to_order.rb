class AddBeingCreatedToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :being_created, :boolean
    add_column :orders, :order_confirmed, :boolean
    add_column :orders, :order_delivered, :boolean
  end
end
