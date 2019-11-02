module Login
	include Rails.application.routes.url_helpers
	
	def user_login(email = "0@example.com", password = "password")
		visit new_user_session_path

		find("input#user_email", match: :first, visible: :any).set email
		find("input#user_password", match: :first, visible: :any).set password

		click_button("Log in")
	end

	def create_user(email = "0@example.com", password = "password")
		User.create!(email: email, password: password)
	end
end
