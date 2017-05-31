class AddPhotoToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :photo_url, :string
  end
end
