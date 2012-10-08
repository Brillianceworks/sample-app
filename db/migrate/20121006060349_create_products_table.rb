class CreateProductsTable < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :name, :null => false
      t.text :description
      t.float :price , :null => false
      t.integer :items_in_stock, :default => 0
    end  
  end

  def down
    drop_table :users
  end
end
