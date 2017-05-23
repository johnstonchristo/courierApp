class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :type
      t.text :name, optional: true
      t.text :full_street_address, optional: true
      t.text :latitude
      t.text :longitude
      t.integer :order_id

      t.timestamps
    end
  end
end
