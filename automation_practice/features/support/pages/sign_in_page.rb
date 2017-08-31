class SignInpage

	def initialize (browser,email)
		@driver = browser
		@email = email
	end
	
	def enter_email
		@driver.text_field(id: 'email_create').set(@email)
	end
	
	def click_create_account
		@driver.button(id: 'SubmitCreate').click
	end
end