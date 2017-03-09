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

	def listing
		@listing = Listing.where(:visible => true, :product_id => params[:product_id])
	end

	def gallery
		
	end

private
	def get_menu_data
	  	@products = Product.category_group('PRODUCT').visible
	  	@services = Product.category_group('SERVICE').visible
	  	# Listing.joins(:product).where(:listings => {:visible => true}, :products => {:visible => true, :category => 'SERVICE'}).group(:product_id)	
		# Listing.joins(:product).where(:listings => {:visible => true}, :products => {:visible => true, :category => 'PRODUCT'}).group(:product_id)
	end
end
