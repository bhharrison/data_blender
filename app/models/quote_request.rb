class QuoteRequest < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :website, using: :url
end
