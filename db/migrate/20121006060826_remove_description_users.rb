class RemoveDescriptionUsers < ActiveRecord::Migration
  def up
    remove_column :users , :description
    change_column :users, :phone , :integer
  end

  def down
    add_column :users , :description, :text
    change_column :users, :phone , :string
  end
end
