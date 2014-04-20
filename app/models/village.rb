class Village < ActiveRecord::Base
  attr_accessible :address, :description, :facebook_page, :latitude, :longitude, :name, :remote_banner1_url, :remote_banner2_url, :remote_banner3_url, :remote_banner_url, :remote_image_url, :website, :wiki_link
  attr_accessible :mandal_id
  
  #geocoder
  geocoded_by :address
	after_validation :geocode, :if => :address_changed?

  #relations
  has_many :places
	belongs_to :mandal

	#scope methods
	def self.latest
		limit(10)
	end
end
