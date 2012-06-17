class Link < ActiveRecord::Base
  belongs_to :favorite
  
  attr_accessible :href
  
  validates :href, :favorite_id, :presence => true
end
