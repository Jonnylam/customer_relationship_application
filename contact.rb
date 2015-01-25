class Contact
attr_accessor :id, :firstname, :lastname, :email, :note

	def initialize(firstname, lastname, email, note)
		@firstname = firstname
		@lastname = lastname
		@email = email
		@note = note

	end


	def to_s 
		"id: #{@id}notes, First Name: #{@first_name}, Last Name: #{@last_name}, Email: #{@email}, Notes: #{@notes}"
	end
end
