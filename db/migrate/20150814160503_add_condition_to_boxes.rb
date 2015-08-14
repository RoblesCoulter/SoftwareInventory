class AddConditionToBoxes < ActiveRecord::Migration
  def change
  	remove_column :boxes, :condition, :string
    add_reference :boxes, :condition, index: true, foreign_key: true
  end
end
