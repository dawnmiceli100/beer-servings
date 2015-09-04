class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.integer :tap_number
      t.integer :place_id
      t.integer :beer_id
      t.timestamps
    end
  end
end
