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
end
