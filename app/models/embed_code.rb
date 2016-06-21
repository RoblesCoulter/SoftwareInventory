class EmbedCode < ActiveRecord::Base
  belongs_to :event_university
  validates_presence_of :name, :code
  has_many :embed_code_variables, dependent: :destroy
  accepts_nested_attributes_for :embed_code_variables, allow_destroy: true, reject_if: lambda {|attributes| attributes['name'].blank?}
end
