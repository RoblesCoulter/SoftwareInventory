class UniversityContact < ActiveRecord::Base
  has_and_belongs_to_many :embed_code_universities,  :join_table => :universities_contacts
	validates :name, :email , presence: true
end
