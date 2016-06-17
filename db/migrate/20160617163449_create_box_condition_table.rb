class CreateBoxConditionTable < ActiveRecord::Migration
  def change
    create_table :boxes_conditions, id: false do |t|
      t.belongs_to :box, index: true
      t.belongs_to :condition, index: true
    end

    create_table :conditions_items, id: false do |t|
      t.belongs_to :condition, index: true
      t.belongs_to :item, index: true
    end
  end
end
