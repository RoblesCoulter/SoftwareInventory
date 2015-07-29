class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.string :text
      	t.timestamps null: false
    end
  end
end
