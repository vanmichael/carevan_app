module UsersHelper
	def fullname(user)
			user.first_name + " " + user.last_name
	end

	def show_user_type(user)

		if user.user_type == 3
			'Normal User'
		elsif user.user_type == 2
			'Contributor'
		else
			'Admin User'
		end
	end
end