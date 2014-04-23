class ApplicationController < ActionController::Base
  protect_from_forgery
   # Override build_footer method in ActiveAdmin::Views::Pages
  require 'active_admin_views_pages_base.rb'


	def places
	  if params[:search].present?
	    @locations = Place.near(params[:search], 50, :order => :distance)
	  else
	    @locations = Place.all
	  end
	end


end
