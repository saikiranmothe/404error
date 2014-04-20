class Mandal < ActiveRecord::Base
  attr_accessible :address, :description, :facebook_page, :latitude, :longitude, :name, :remote_banner1_url, :remote_banner2_url, :remote_banner3_url, :remote_banner_url, :remote_image_url, :website, :wiki_link


  attr_accessible :district_id
  
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
 
  #relations
  has_many :villages
  has_many :places
  
  belongs_to :district

   #scope methods
  def self.latest
  	limit(5)
  end

end
