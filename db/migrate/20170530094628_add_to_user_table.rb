class AddToUserTable < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :skills, :string
    add_column :users, :city, :string
    add_column :users, :name, :string
  end
end
