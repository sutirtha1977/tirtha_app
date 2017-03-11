module ListingsHelper
	def image_for(listing)
		if File.exist? Rails.root.join('app', 'assets', 'images', listing.image_loc)
			image_tag(listing.image_loc, class: "img-responsive", size: "200x200")
		else
			image_tag(File.join("listings", "om.jpg"), class: "img-responsive")
		end	
	end

	def image_for_home(listing)
		if File.exist? Rails.root.join('app', 'assets', 'images', listing.image_loc)
			image_tag(listing.image_loc, class: "img-responsive", size: "320x210")
		else
			image_tag(File.join("listings", "om.jpg"), class: "img-responsive")
		end	
	end

	def check_image(listing)
		if File.exist? Rails.root.join('app', 'assets', 'images', listing.image_loc)
			return true
		else
			return false
		end
	end
end
