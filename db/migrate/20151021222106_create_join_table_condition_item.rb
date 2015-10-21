class CreateJoinTableConditionItem < ActiveRecord::Migration
  def change
    create_join_table :conditions, :items do |t|
      # t.index [:condition_id, :item_id]
      # t.index [:item_id, :condition_id]
    end
  end
end
