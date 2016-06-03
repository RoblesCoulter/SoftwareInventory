class CreateEmbedCodes < ActiveRecord::Migration
  def change
    create_table :events_universities do |t|
      t.belongs_to :event, index: true
      t.belongs_to :embed_code_university, index: true
      t.string :status
      t.text :comments
      t.timestamps null: false
    end

    create_table :embed_codes do |t|
      t.belongs_to :events_university
      t.timestamps null: false
      t.text :code
      t.string :name
    end

    create_table :embed_code_variables do |t|
      t.belongs_to :embed_code
      t.timestamps null: false
      t.string :name
      t.string :default_value
    end
  end
end
