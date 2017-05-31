class AddStuffToContracts < ActiveRecord::Migration[5.0]
  def change
    rename_column :contracts, :accepted, :status
  end
end
