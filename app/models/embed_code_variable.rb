class EmbedCodeVariable < ActiveRecord::Base
  belongs_to :embed_code
  validates_presence_of :name
  validates :name, format: { without: /\s/ }
end
