class PublicController < ApplicationController

	before_action :get_startup_data
	
	def home

	end

	def about
		
	end


private
	def get_startup_data
	  	@products = Product.category_group('PRODUCT').visible
	  	@services = Product.category_group('SERVICE').visible
	  	@all_categories = Product.visible	
	  	@teams = Team.sorted	
	end
end
