class StaticController < ApplicationController
  def home
    @latest_places = Place.latest 
    # @place_category = Place.categories(category)
    @places_images = Place.place_images
  end

  def about
  end

  def contact
  end

  def jobs
  end

  def team
  end


end
