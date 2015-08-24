class ChangNotesToDescription < ActiveRecord::Migration
  def change
  	rename_column :boxes, :notes, :description
  end
end
