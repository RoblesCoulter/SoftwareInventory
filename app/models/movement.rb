class Movement < ActiveRecord::Base
	has_paper_trail
	
	has_and_belongs_to_many :boxes
	has_one :return_movement, class_name: "Movement", foreign_key: :return_id
	belongs_to :sent_movement, class_name: "Movement", foreign_key: :return_id
	belongs_to :origin, class_name: "Location", foreign_key: :origin_id
	belongs_to :destination, class_name: "Location", foreign_key: :destination_id
	validates :origin_id, :destination_id, presence: true
	
end
