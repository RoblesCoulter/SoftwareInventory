class AddLocationToMovements < ActiveRecord::Migration
  def change
  	remove_column :movements, :origin, :string
  	remove_column :movements, :destination, :string
  	add_column :movements, :origin_id, :integer
  	add_index :movements, :origin_id
  	add_column :movements, :destination_id, :integer
  	add_index :movements, :destination_id
  end
end
