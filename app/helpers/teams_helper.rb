module TeamsHelper
	def avatar_for(team)
		# if team.avatar?
		# 	image_tag team.avatar.url(:thumb)
		# else
		# 	image_tag "default_avatar.jpg"
		# end
		image_tag File.join("team", "default_avatar.jpg")
	end
	def avatar_for_home(member)
		if File.exist? Rails.root.join('app', 'assets', 'images', member.avatar_loc)
			image_tag member.avatar_loc, class: "img-circle img-responsive"
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
