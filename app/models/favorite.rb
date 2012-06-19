class Favorite < ActiveRecord::Base
  belongs_to :user
  has_one :link
  has_many :media
  acts_as_taggable
  
  searchable do
    text :title, :author, :text
    integer :user_id
  end
  
  attr_accessor :href
  
  attr_accessible :title, :author, :text, :href
  
  validates :user_id, :link, :presence => true
  
  before_validation :create_link
  
  def to_s
    self.title
  end
  
  private
  
  def create_link
    self.build_link :href => self.href
  end
end
