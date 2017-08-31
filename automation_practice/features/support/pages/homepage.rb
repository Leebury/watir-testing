class HomePage

	def initialize (browser)
		@driver = browser
	end

	def visit
		@driver.goto 'http://automationpractice.com/index.php'
	end

	def click_sign_in 
		@driver.link(text: 'Sign in').click
	end

end