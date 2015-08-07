class Category < ActiveRecord::Base
	has_many :products
	validates :name, presence: true
	validates_uniqueness_of :name, case_sensitive: false

	def self.search(search)
		search ? where("UPPER(name) LIKE UPPER(?)", "%#{search}%") : all
	end               
end
