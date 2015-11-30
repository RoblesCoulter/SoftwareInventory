class AddNameAndEmailToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :responsible, :string
    add_column :locations, :email, :string
  end
end
