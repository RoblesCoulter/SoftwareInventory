class Movement < ActiveRecord::Base
	has_and_belongs_to_many :boxes
	has_one :return_movement, class_name: "Movement", foreign_key: :return_id
	belongs_to :sent_movement, class_name: "Movement", foreign_key: :return_id
	def self.search(search)
		search ? where("UPPER(origin) LIKE UPPER(?)", "%#{search}%") : all
	end
end
