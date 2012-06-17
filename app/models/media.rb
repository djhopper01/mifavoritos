class Media < ActiveRecord::Base
  belongs_to :favorite
  
  attr_accessible :href, :media_type, :primary
  
  validates :href, :media_type, :favorite_id, :presence => true
end
