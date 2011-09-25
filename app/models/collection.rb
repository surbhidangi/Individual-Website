class Collection < ActiveRecord::Base

  attr_accessible :collection_title, :inspiration, :artist

  has_many :artworks

end
