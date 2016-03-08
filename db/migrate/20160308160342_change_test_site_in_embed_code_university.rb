class ChangeTestSiteInEmbedCodeUniversity < ActiveRecord::Migration
  def change
  	change_column :embed_code_universities, :test_site, :string
  end
end
