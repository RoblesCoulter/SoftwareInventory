class AddItemRefToSoftwareSerials < ActiveRecord::Migration
  def change
    add_reference :software_serials, :item, index: true, foreign_key: true
    remove_column :software_serials, :software_availability, :string
  end
end
