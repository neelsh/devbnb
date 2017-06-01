class AddMessageToContracts < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :message, :text
  end
end
