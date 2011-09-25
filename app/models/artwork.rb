class Artwork < ActiveRecord::Base

  attr_accessible :art_title, :image_url, :comment, :collection_id
  belongs_to :collection

end
