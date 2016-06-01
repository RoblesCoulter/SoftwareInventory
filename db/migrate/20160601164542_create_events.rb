class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name

      t.timestamps null: false
    end

    create_table :events_embed_code_universities do |t|
      t.belongs_to :event, index: true
      t.belongs_to :embed_code_university, index: true
      t.string :status
      t.text :comments
      t.timestamps null: false
    end

    create_table :embed_codes do |t|
      t.belongs_to :events_embed_code_university
      t.timestamps null: false
      t.text :code
    end
  end
end
