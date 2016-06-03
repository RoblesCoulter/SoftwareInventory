class CreateEvents < ActiveRecord::Migration
  def change

    remove_column :embed_code_universities, :embed_code, :text
    remove_column :embed_code_universities, :status, :string
    remove_column :embed_code_universities, :comments, :text

    create_table :events do |t|
      t.string :name
      t.string :short_url
      t.timestamps null: false
    end
  end
end
