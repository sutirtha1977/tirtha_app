class PublicController < ApplicationController
	
	before_action :get_menu_data

	def home
	  	@products = Product.category_group('PRODUCT').visible
	  	@services = Product.category_group('SERVICE').visible
	end

	def about
	  	@all_categories = Product.visible			
	end

	def team
	  	@teams = Team.sorted		
	end

private
	def get_menu_data
	  	@products = Product.category_group('PRODUCT').visible
	  	@services = Product.category_group('SERVICE').visible	
	end
end
