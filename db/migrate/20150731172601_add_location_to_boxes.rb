class AddLocationToBoxes < ActiveRecord::Migration
  def change
    add_reference :boxes, :location, index: true, foreign_key: true
  end
end
