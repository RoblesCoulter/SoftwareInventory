class ChangeEmbedCodeToCodeInEventsUniversity < ActiveRecord::Migration
  def change
    rename_column :events_universities, :embed_code, :code
  end
end
