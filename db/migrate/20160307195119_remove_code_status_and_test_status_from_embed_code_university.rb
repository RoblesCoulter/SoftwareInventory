class RemoveCodeStatusAndTestStatusFromEmbedCodeUniversity < ActiveRecord::Migration
  def change
    remove_column :embed_code_universities, :code_status, :string
    remove_column :embed_code_universities, :test_status, :string
    add_column :embed_code_universities, :comments, :text
  end
end
