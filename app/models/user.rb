class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  attr_accessible :address,:latitude,:longitude
    
  #relations
  has_many :places
  has_many :yourstories
  

  #geocoder
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
  #scope methods
  def self.latest
    limit(5)
  end

end
