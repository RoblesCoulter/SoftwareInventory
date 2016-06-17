class DestroyJoinTableConditionItem < ActiveRecord::Migration
  def change
      drop_join_table :conditions, :items
  end
end
