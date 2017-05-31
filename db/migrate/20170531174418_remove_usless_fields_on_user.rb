class RemoveUslessFieldsOnUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :skills
    remove_column :users, :name
    add_column :users, :experience, :integer
    add_column :users, :education, :string
  end
end


