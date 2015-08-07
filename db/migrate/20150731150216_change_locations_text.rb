class ChangeLocationsText < ActiveRecord::Migration
  def change
  	rename_column :locations, :text, :name
  end
end
