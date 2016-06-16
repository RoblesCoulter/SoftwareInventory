class AddEmbedCodeToEventsUniversity < ActiveRecord::Migration
  def change
    add_column :events_universities, :embed_code, :text
  end
end
