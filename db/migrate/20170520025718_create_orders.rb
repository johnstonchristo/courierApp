class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :item_description
      t.integer :item_weight
      t.integer :item_height
      t.integer :item_depth
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :courier_id
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
