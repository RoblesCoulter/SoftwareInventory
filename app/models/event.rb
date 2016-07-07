class Event < ActiveRecord::Base
  has_many :events_universities
  has_many :embed_code_universities, -> { select 'embed_code_universities.*, events_universities.comments as event_comments, events_universities.status as event_status'}, through: :events_universities
  validates :short_url, format: { without: /\s/ }
  accepts_nested_attributes_for :events_universities

end
