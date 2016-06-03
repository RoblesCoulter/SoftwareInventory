class EmbedCodeUniversity < ActiveRecord::Base
	has_and_belongs_to_many :university_contacts, :join_table => :universities_contacts
	validates :name, :acronym, presence: true
	validates_uniqueness_of :acronym, :name, case_sensitive: false
	has_many :events_universities
	has_many :events, through: :event_universities
end
