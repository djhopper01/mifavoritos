class Favorite < ActiveRecord::Base
  belongs_to :user
  has_one :link
  has_many :media
  acts_as_taggable
  
  searchable do
    text :title, :author, :text
    integer :user_id
  end
  
  attr_accessible :title, :author, :text
  
  validates :user_id, :presence => true
  validates_associated :link
  validates_associated :media
end
