class AddStuffToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :city, :string
    add_column :services, :education, :string
    add_column :services, :experience, :integer
    add_column :services, :skills, :string
  end
end
