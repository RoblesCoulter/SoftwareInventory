class AddConditionToItems < ActiveRecord::Migration
  def change
  	remove_column :items, :condition, :string
    add_reference :items, :condition, index: true, foreign_key: true
  end
end
