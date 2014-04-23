class Place < ActiveRecord::Base
  attr_accessible :address, :category, :closeing_time, :description, :district_id, :established, :fbpage_link, :latitube, :longitude, :mandal_id, :name, :opening_time, :rating, :remote_banner1_url, :remote_banner2_url, :remote_banner3_url, :remote_banner_url, :remote_image_url, :user_id, :verify, :village_id, :website, :wiki_link, :youtube_link
 attr_accessible :latitude
  #relations
  belongs_to :village
	belongs_to :mandal
	belongs_to :district 
	belongs_to :user

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

	#scope methods
  def self.latest
  	limit(6)
  end

  def self.categories(category)
    find_all_by_category(category)
  end

  #places_images
  def self.place_images
      all.map(&:remote_image_url)
  end

end
