class CreateServings < ActiveRecord::Migration
  def change
    create_table :servings do |t|
      t.string :size
      t.float :price
      t.integer :menu_item_id
      t.timestamps
    end
  end
end
