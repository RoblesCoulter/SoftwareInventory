class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.references :category , index: true 
      t.timestamps
    end
  end
end
