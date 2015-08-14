class Item < ActiveRecord::Base
	has_and_belongs_to_many :software_serials
	belongs_to :product
	belongs_to :box
	belongs_to :location
	validates_uniqueness_of :barcode, case_sensitive: false
	validates :price, numericality: { allow_blank: true }
	validates :barcode, :product_id, presence: true
	belongs_to :condition

	def self.search(search)
		search ? where("UPPER(barcode) LIKE UPPER(?)", "%#{search}%") : all
	end
end
