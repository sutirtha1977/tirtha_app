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
	  	@teams = Team.sort_pos		
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
	  	@all_categories = Product.visible
	  	@listings_service = Listing.joins(:product)
	  						.select('listings.*,products.name as cat_name')
	  						.where(:listings => {:visible => true}, :products => {:visible => true, :category => 'SERVICE'})
	  						# .group(:product_id,:position)
	  	@listings_product = Listing.joins(:product)
	  						.select('listings.*,products.name as cat_name')
	  						.where(:listings => {:visible => true}, :products => {:visible => true, :category => 'PRODUCT'})
	  						# .group(:product_id,:position)
	  	# Listing.joins(:product).where(:listings => {:visible => true}, :products => {:visible => true, :category => 'SERVICE'}).group(:product_id,:position)	
		# Listing.joins(:product).where(:listings => {:visible => true}, :products => {:visible => true, :category => 'PRODUCT'}).group(:product_id)
	end
end

