class Movement < ActiveRecord::Base
	has_and_belongs_to_many :boxes

	def self.search(search)
		search ? where("UPPER(origin) LIKE UPPER(?)", "%#{search}%") : all
	end
end
