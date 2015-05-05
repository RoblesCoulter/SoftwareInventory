class Item < ActiveRecord::Base
	has_and_belongs_to_many :software_serials
	belongs_to :product
	belongs_to :box
	validates_uniqueness_of :barcode
	validates :price, numericality: { allow_blank: true }
	validates :barcode, :product_id, presence: true
end
