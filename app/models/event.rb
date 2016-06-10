class Event < ActiveRecord::Base
  has_many :events_universities
  has_many :embed_code_universities, through: :events_universities
  validates :short_url, format: { without: /\s/ }
end