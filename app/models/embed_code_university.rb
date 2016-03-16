class EmbedCodeUniversity < ActiveRecord::Base
	has_and_belongs_to_many :university_contacts, :join_table => :universities_contacts
	validates :name, :acronym, presence: true
	validates_uniqueness_of :acronym, :name, case_sensitive: false
end
