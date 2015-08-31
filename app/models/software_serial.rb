class SoftwareSerial < ActiveRecord::Base
	has_and_belongs_to_many :items
	belongs_to :software
	validates :serial_number, :software_id , presence: true
	validates :price, numericality: { allow_blank: true }
	validates :software_availability, numericality: { allow_blank: true , only_integer: true}
	
end
