require 'faker'
class CreateAccount 
	
	def initialize (browser,email)
		@driver = browser
		@email = email
	end

	def enter_details (name,last_name,company,address1,address2,city,state,postcode,add_info,phone_number,mobile_number,address_alias)
		
		@driver.radio(id: 'id_gender1').set
		@driver.text_field(id: 'customer_firstname').set(name)
		@driver.text_field(id: 'customer_lastname').set(last_name)
		@driver.text_field(id: 'email').set(@email)
		@driver.text_field(id: 'passwd').set('password')
		@driver.select_list(id: 'days').select_value('16')
		@driver.select_list(id: 'months').select_value('1')
		@driver.select_list(id: 'years').select_value('1995')
		@driver.checkbox(id: 'newsletter').set
		@driver.checkbox(id: 'optin').set		
		@driver.text_field(id: 'firstname').set(name)
		@driver.text_field(id: 'lastname').set(last_name)
		@driver.text_field(id: 'company').set(company)
		@driver.text_field(id: 'address1').set(address1)
		@driver.text_field(id: 'address2').set(address2)
		@driver.text_field(id: 'city').set(city)
		@driver.select_list(id: 'id_state').select(state)
		@driver.text_field(id: 'postcode').set(postcode)
		@driver.select_list(id: 'id_country').select('United States')
		@driver.element(id: 'other').set(add_info)
		@driver.text_field(id: 'phone').set(phone_number)
		@driver.text_field(id: 'phone_mobile').set(mobile_number)
		@driver.text_field(id: 'alias').set(address_alias)
		sleep(3)
		@driver.button(id: 'submitAccount').click
		
	end

	def fake_details
	 customer_firstname = Faker::Name.first_name
	 customer_lastname = Faker::Name.last_name
	 city = Faker::Address.city
	 company = Faker::Company.name 
	 address1 = Faker::Address.street_address
	 address2 = Faker::Address.secondary_address 
	 state = Faker::Address.state
	 postcode = Faker::Address.postcode
	 add_info = Faker::ChuckNorris.fact
	 phone_number = Faker::PhoneNumber.cell_phone 
	 mobile_number = Faker::PhoneNumber.cell_phone
	 address_alias = Faker::LordOfTheRings.location 

	 enter_details(customer_firstname,customer_lastname,company,address1,address2,city,state,postcode,add_info,phone_number,mobile_number,address_alias)
	end


end