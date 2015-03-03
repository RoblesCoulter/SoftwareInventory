class CreateItems < ActiveRecord::Migration
	def change
		create_table :items do |t|
			t.string :barcode
			t.belongs_to :box, index: true
			t.belongs_to :product, index: true
			t.string :serial_number
			t.string :model_number
			t.float :price
			t.string :location
			t.string :condition
			t.string :firmware
			t.string :photo #url
			t.string :brand
			t.integer :responsable
			t.timestamps
		end

		add_index :items, :barcode, unique: true

		create_table :items_software_serials, id: false do |t|
			t.belongs_to :item, index: true
			t.belongs_to :software_serial, index: true
		end
	end
end
