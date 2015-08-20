class Condition < ActiveRecord::Base
	has_many :items
	has_many :boxes
	validates :name, presence: true
	validates_uniqueness_of :name, case_sensitive: false
	
	def self.search(search)
		search ? where("UPPER(name) LIKE UPPER(?)", "%#{search}%") : all
	end
end
