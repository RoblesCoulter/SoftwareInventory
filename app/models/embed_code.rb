class EmbedCode < ActiveRecord::Base
  belongs_to :event_university
  has_many :embed_code_variables
end
