class SoftwareSerial < ActiveRecord::Base
	has_paper_trail
	
	belongs_to :item
	belongs_to :software
	validates :serial_number, :software_id , presence: true
	validates :price, numericality: { allow_blank: true }
	
	
end
