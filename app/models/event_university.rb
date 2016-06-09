class EventUniversity < ActiveRecord::Base
  belongs_to :event
  belongs_to :embed_code_university
  has_one :embed_code
end
