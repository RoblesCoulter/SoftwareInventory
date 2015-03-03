class CreateSoftwareSerials < ActiveRecord::Migration
  def change
    create_table :software_serials do |t|
    	t.string :serial_number
    	t.belongs_to :software, index: true
    	t.string :operative_system
    	t.float :price
    	t.integer :software_availability
      t.timestamps
    end

    add_index :software_serials, :serial_number, unique: true
  end
end
