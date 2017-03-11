module TeamsHelper
	def avatar_for(team)
		if File.exist? Rails.root.join('app', 'assets', 'images', team.avatar_loc)
			image_tag team.avatar_loc, class: "img-circle img-responsive", size: "200x200"
		else
			image_tag File.join("team", "default_avatar.jpg")
		end
	end

	def avatar_for_home(team)
		if File.exist? Rails.root.join('app', 'assets', 'images', team.avatar_loc)
			image_tag team.avatar_loc, class: "img-circle img-responsive"
		else
			image_tag File.join("team", "default_avatar.jpg"), class: "img-circle img-responsive"
		end	
	end

	def check_avatar(team)
		if File.exist? Rails.root.join('app', 'assets', 'images', team.avatar_loc)
			return true
		else
			return false
		end
	end
end
