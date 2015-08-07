class Location < ActiveRecord::Base
	has_many :movement_origin_location, class_name: "Movement", foreign_key: :origin_id
	has_many :movement_destination_location, class_name: "Movement", foreign_key: :destination_id
	has_many :items
	has_many :boxes
	validates :name, presence: true
	validates_uniqueness_of :name, case_sensitive: false

	def self.search(search)
		search ? where("UPPER(name) LIKE UPPER(?)", "%#{search}%") : all
	end

	def name_with_country
		country.present? ? "#{name}, #{country}" : "#{name}"
	end

end
