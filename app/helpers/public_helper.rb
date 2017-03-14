module PublicHelper
	def list_service_for_home(list_service)
		if File.exist? Rails.root.join('app', 'assets', 'images', list_service.image_loc)
			# image_tag(list_service.image_loc, class: "img-responsive", size: "242x200")
			image_tag(list_service.image_loc, class: "img-responsive")
		else
			image_tag(File.join("listings", "om.jpg"), class: "img-responsive" )
		end	
	end

	def list_product_for_home(list_product)
		if File.exist? Rails.root.join('app', 'assets', 'images', list_product.image_loc)
			# image_tag(list_product.image_loc, class: "img-responsive", size: "242x200")
			image_tag(list_product.image_loc, class: "img-responsive")
		else
			image_tag(File.join("listings", "om.jpg"), class: "img-responsive" )
		end	
	end
end
