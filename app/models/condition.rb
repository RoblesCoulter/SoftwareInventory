class Condition < ActiveRecord::Base
	has_many :items
	has_many :boxes
end
