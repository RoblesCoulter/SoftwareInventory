class Box < ActiveRecord::Base
	has_and_belongs_to_many :movements
end
