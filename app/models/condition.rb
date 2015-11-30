class Condition < ActiveRecord::Base
	has_paper_trail
	
	has_many :items
	has_and_belongs_to_many :boxes
	validates :name, presence: true
	validates_uniqueness_of :name, case_sensitive: false
end
