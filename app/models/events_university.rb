class EventsUniversity < ActiveRecord::Base
  belongs_to :event
  belongs_to :embed_code_university
  has_one :embed_code
  accepts_nested_attributes_for :embed_code_university
end
