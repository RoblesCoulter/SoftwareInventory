class ChangeEmbedCodeUniversityColumns < ActiveRecord::Migration
  def change
  	change_column :embed_code_universities, :acronym, :string
  	change_column :embed_code_universities, :name, :string
  	change_column :embed_code_universities, :test_user, :string
  	change_column :embed_code_universities, :test_password, :string
  end
end
