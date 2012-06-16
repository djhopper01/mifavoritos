class Favorite < ActiveRecord::Base
  acts_as_taggable
  
  attr_accessible :title, :author, :text
end
