class Box < ActiveRecord::Base
	has_and_belongs_to_many :movements
	has_many :items
	belongs_to :condition
	validates :barcode, :box_number , presence: true
	validates :weight, :height, :width, :depth, numericality: { allow_blank: true}
	validates :box_number, numericality: { only_integer: true }
	validates_uniqueness_of :box_number, case_sensitive: false
	validates_uniqueness_of :barcode, case_sensitive: false
	belongs_to :location

	def box_number_with_barcode
		"##{box_number} (#{barcode})"
	end
end
