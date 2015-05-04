class Product < ActiveRecord::Base
	has_many :items, dependent: :destroy
	belongs_to :category
	validates :name, presence: true
	validates_uniqueness_of :name
end
