class Software < ActiveRecord::Base
	has_many :software_serials, dependent: :destroy
	validates :name, presence: true
	validates_uniqueness_of :name
end
