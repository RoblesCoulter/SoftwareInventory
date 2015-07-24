class AddIsReturnToMovements < ActiveRecord::Migration
  def change
    add_column :movements, :is_return, :boolean, default: false
    add_column :movements, :return_id, :integer, references: :movements
  end
end
