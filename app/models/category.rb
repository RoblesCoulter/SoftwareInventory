class Category < ActiveRecord::Base
	has_many :products
	validates :name, presence: true
	validates_uniqueness_of :name               
end
