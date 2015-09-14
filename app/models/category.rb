class Category < ActiveRecord::Base
	has_many :products
	has_many :items, :through => :products
	validates :name, presence: true
	validates_uniqueness_of :name, case_sensitive: false

        
end
