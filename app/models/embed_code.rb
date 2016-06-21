class EmbedCode < ActiveRecord::Base
  belongs_to :event_university
  validates_presence_of :name, :code
  accepts_nested_attributes_for :embed_code_variables
  has_many :embed_code_variables
end
