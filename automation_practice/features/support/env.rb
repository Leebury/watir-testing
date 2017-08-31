require 'watir'
require_relative 'automatic_site'

	World(AutomaticSite) 

	driver = Watir::Browser.new :chrome

	Before do
		@driver = driver
		@email = Faker::Internet.free_email
	end