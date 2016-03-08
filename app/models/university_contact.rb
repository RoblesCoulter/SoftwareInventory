class UniversityContact < ActiveRecord::Base
  has_and_belongs_to_many :embed_code_universities
	validates :name, :email , presence: true
end
