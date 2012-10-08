class CreateUsersTable < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :first_name, :limit => 10, :null => false
      t.string :last_name
      t.integer :age
      t.boolean :active, :default => true
      t.text :description
      t.string :phone
    end  
  end

  def down
    drop_table :users
  end
end
