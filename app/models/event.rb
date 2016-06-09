class Event < ActiveRecord::Base
  has_many :event_universities
  has_many :embed_code_universities, through: :event_universities
  validates :short_url, format: { without: /\s/ }
end
