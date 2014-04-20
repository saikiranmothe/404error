class Yourstory < ActiveRecord::Base
  attr_accessible :description, :name, :remote_image_url, :user_id


  #relations
  belongs_to :user

end
