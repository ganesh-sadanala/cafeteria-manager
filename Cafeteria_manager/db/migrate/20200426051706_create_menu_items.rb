class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :menu_id
      t.string :menu_item_name
      t.string :menu_item_price
    end
  end
end
