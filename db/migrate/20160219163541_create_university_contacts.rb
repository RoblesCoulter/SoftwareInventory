class CreateUniversityContacts < ActiveRecord::Migration
  def change
    create_table :university_contacts do |t|
      t.text :name
      t.text :email
      t.text :skype
      t.text :role

      t.timestamps null: false
    end
  end
end
