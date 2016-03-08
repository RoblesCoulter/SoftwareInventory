class ChangeNameFormatAndEmailFormatAndSkypeFormatAndRoleFormatInUniversityContact < ActiveRecord::Migration
  def change
  	change_column :university_contacts, :name, :string
  	change_column :university_contacts, :email, :string
  	change_column :university_contacts, :skype, :string
  	change_column :university_contacts, :role, :string
  end
end
