class District < ActiveRecord::Base
  attr_accessible :address, :description, :facebook_page, :latitude, :longitude, :name, :remote_banner1_url, :remote_banner2_url, :remote_banner3_url, :remote_banner_url, :remote_image_url, :website, :wiki_link

  #realtions
  has_many :mandals
  has_many :places

  #geocoder
  geocoded_by :address
	after_validation :geocode, :if => :address_changed?
  

  #scope methods
  def self.latest
  	limit(5)
  end

  

end
