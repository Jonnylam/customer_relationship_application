class Rolodex
	attr_reader :contacts
	@@ids = 1001
	def initialize
		@contacts=[]
	end

	def add_contact(contact)
		contact.id = @@ids
		@contacts << contact
		@@ids += 1
		contact
	end

	def searchcontact(info)
		contacts.each do |x|
			if x.firstname == info
				puts "FIRST NAME: #{x.firstname}, LAST NAME: #{x.lastname}, EMAIL: #{x.email}, NOTE: #{x.note}"
			else
				puts "there is no contact"
			
			end
		end
		
	end
end