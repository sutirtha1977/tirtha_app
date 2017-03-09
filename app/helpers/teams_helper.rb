module TeamsHelper
	def avatar_for(team)
		if team.avatar?
			image_tag team.avatar.url(:thumb)
		else
			image_tag "default_avatar.jpg"
		end
	end
	def avatar_for_home(member)
		if member.avatar?
			image_tag member.avatar.url, class: "img-circle", "alt": member.first_name
		else
			image_tag "default_avatar.jpg"
		end	
	end
end
