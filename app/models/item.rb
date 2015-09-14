class Item < ActiveRecord::Base
	belongs_to :product
	belongs_to :box
	belongs_to :location
	has_many :software_serials
	validates_uniqueness_of :barcode, case_sensitive: false
	validates :price, numericality: { allow_blank: true }
	validates :barcode, :product_id, presence: true
	belongs_to :condition
	
	def name_with_product
		@product_name = self.product.name_with_brand
		"#{@product_name} (#{barcode})"
	end
end
