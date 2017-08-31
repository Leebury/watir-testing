Feature: register
	Scenario: As a user i can register 
		Given I can access the home page 
		And I then click sign in 
		When I put an email 
		And I click create an account 
		And input all neccessary registration details 
		And once I clicked create account 
		Then I should be logged in 