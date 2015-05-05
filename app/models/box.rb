class Box < ActiveRecord::Base
	has_and_belongs_to_many :movements
	has_many :items
	validates :barcode, :box_number , presence: true
	validates :weight, :height, :width, :depth, numericality: { allow_blank: true}
	validates :box_number, numericality: { only_integer: true }
	validates_uniqueness_of :box_number, :barcode
end
