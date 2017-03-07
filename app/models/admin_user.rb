class AdminUser < ApplicationRecord
	has_secure_password

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

	validates :first_name, :presence => true,
			:length => { :maximum => 25 }
	validates :last_name, :presence => true,
	        :length => { :maximum => 50 }
	validates :username, :length => { :within => 6..25 },
	        :uniqueness => true
	validates :email, :presence => true,
	        :length => { :maximum => 100 },
	        :format => EMAIL_REGEX,
	        :uniqueness => { :case_sensitive => false }
	  
	scope :sorted, lambda { order('last_name ASC, first_name ASC')}

	def name
		"#{first_name} #{last_name}"
		# Or: first_name + ' ' + last_name
		# Or: [first_name, last_name].join(' ')
	end
end
