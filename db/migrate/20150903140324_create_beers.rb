class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.integer :brewery_id
      t.timestamps
    end
  end
end
