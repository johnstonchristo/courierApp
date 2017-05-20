class AddImageToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :link, :text
  end
end
