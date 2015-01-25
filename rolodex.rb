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
#If there is no contact, runs an empty method

	def attribute_id(attribute)
		@contacts.each do |contact|
			if attribute == "first"
				puts contact.firstname
			elsif attribute == "last"
				puts contact.lastname
			elsif attribute == "email"
				puts contact.email
			elsif attribute == "note"
				puts contact.note
			else
				puts "your input is not an attribute"
			end
		end
	end

	def delete_id(deleteid)
		deleted_id = find_contact(deleteid)
			# if deleted_id == deleteid
			if @contacts.delete(deleted_id)
				puts "contact deleted"
			else
				puts "no contact"
			end
			# 	puts "deleted"
			# else
			# 	"contact does not exist"
			# end
	end
end