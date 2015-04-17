class Box < ActiveRecord::Base
	has_and_belongs_to_many :movements
	has_many :items
	validates :barcode, presence: true
	validates :box_number, presence: true, numericality: { only_integer: true }
end
