require_relative 'pages/homepage.rb'
require_relative 'pages/sign_in_page.rb'
require_relative 'pages/create_account_page.rb'

module AutomaticSite

	def home_page
		HomePage.new(@driver)
	end

	def sign_in_page
		SignInpage.new(@driver,@email)
	end

	def create_account
		CreateAccount.new(@driver,@email)
	end

end