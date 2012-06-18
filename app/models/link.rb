class Link < ActiveRecord::Base
  belongs_to :favorite
  
  attr_accessible :href
  
  validates :href, :presence => true
end
