class RemoveConditionIdFromBoxes < ActiveRecord::Migration
  def change
    remove_column :boxes, :condition_id
  end
end
