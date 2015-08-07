class AddLocationToItems < ActiveRecord::Migration
  def change
    remove_column :items, :location, :string
    add_reference :items, :location, index: true, foreign_key: true
  end
end
