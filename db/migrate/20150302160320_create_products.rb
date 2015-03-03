class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
		t.belongs_to :category, index: true
      t.timestamps
    end
  end
end
