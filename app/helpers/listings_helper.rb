module ListingsHelper
	def listing_for_home(listing)
		if listing.image?
			image_tag(listing.image.url, class: "img-responsive", size: "320x210")
		else
			image_tag("om.jpg", class: "img-responsive")
		end	
	end
end
