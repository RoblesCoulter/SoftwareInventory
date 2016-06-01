class AddEmbedCodeAndStatusToEmbedCodeUniversity < ActiveRecord::Migration
  def change
    add_column :embed_code_universities, :embed_code, :text
    add_column :embed_code_universities, :status, :string
  end
end
