class CreateEmbedCodeUniversities < ActiveRecord::Migration
  def change
    create_table :embed_code_universities do |t|
      t.text :acronym
      t.text :name
      t.text :code_status
      t.text :test_status
      t.text :test_user
      t.text :test_password
      t.text :test_site

      t.timestamps null: false
    end

    create_table :universities_contacts, id: false do |t|
      t.belongs_to :university_contact, index: true
      t.belongs_to :embed_code_university, index: true
    end
  end

end
