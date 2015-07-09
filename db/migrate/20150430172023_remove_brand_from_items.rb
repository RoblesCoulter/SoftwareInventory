class RemoveBrandFromItems < ActiveRecord::Migration
  def change
  	remove_column :items, :brand
  end
end
