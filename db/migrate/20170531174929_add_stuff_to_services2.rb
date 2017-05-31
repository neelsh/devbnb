class AddStuffToServices2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :photo_url
    remove_column :services, :experience
    remove_column :services, :education
    remove_column :services, :city
    remove_column :services, :skills
 end
end
