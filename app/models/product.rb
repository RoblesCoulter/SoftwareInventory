class Product < ActiveRecord::Base
	has_many :items, dependent: :destroy
	belongs_to :category
	validates :name, presence: true
	validates_uniqueness_of :name, case_sensitive: false

	

	def name_with_brand
		brand.present? ? "#{name} - #{brand}" : "#{name}"	
	end
end
