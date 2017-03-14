module ApplicationHelper
	def error_messages_for(object)
		render(:partial => 'application/error_messages', :locals => {:object => object})
	end
	
	def flash_class(key)
		case key
		when "notice" then "alert alert-info"
		when "alert" then "alert alert-danger"
		end
	end

	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end
	
end
