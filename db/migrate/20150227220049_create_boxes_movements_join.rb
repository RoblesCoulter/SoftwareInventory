class CreateBoxesMovementsJoin < ActiveRecord::Migration
  def change
		create_table :boxes do |t|
			t.string :barcode
			t.float :weight
			t.float :height
			t.float :width
			t.float :depth
			t.integer :box_number
			t.string :photo #url
			t.string :condition
			t.text :notes
			t.timestamps
		end

	 	add_index :boxes, :barcode, unique: true

		create_table :movements do |t|
			t.date :shipping_date
			t.date :arrival_date
			t.string :origin
			t.string :destination
			t.string :delivery_method
			t.timestamps
		end

		create_table :boxes_movements, id: false do |t|
			t.belongs_to :box, index: true
			t.belongs_to :movement, index: true
		end
  end
end
