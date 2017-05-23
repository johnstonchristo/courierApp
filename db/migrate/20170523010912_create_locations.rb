class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :type
      t.text :name
      t.text :address
      t.text :latitude
      t.text :longitude

      t.timestamps
    end
  end
end
