class Rolodex
	attr_reader :contacts
	@@ids = 1001
	def initialize
		@contacts=[]
	end

	def add_contact(contact)
		contact.id = @@ids #assign an ID number
		@contacts << contact #adds in an array
		@@ids += 1 #adds a new unique ID number
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
		#goes through each element in the array and searches for firstname, if found then displays subsequent info.  
	end
	#If there is no contact, runs an empty method - fix later

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
		#Using each method, searches contacts array, if user inputs an attribute, display a specific attribute by pulling info from the array and putting it
	end


	def find_contact(idnumber)
		@contacts.find { |contact| contact.id = idnumber}
		#method to search an the contact array by ID number, need it to delete a contact and modify a contact
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
		#Couldnt get the if statement to work, but .delete method deletes the contact
	end

	def modify_contact(idnumber)
		modify_id = find_contact(idnumber) #searches array for ID number
				
				puts "Please enter the Name: " 
				name = gets.chomp 
				contact = @contacts.find(idnumber).first 
				contact.firstname = name

				puts "Please enter the lastname: "
				lastname = gets.chomp
				contact = @contacts.find(idnumber).first
				contact.lastname = lastname

				puts "Please enter the email:"
				email = gets.chomp
				contact = @contacts.find(idnumber).first
				contact.email = email

				puts "Please enter the notes:"
				note = gets.chomp
				contact = @contacts.find(idnumber).first
				contact.note = note
	 #first method finds first element of the array, ID number, which then changes everything after
	end
end



#Modify_contact
#Take ID number
#Is this the right number?
#No - Reinput Number
# #		puts "[1] Change name:"
# 		puts "[2] Change lastname:"
# 		puts "[3] Change email:"
# 		puts "[4] Change notes"
#enter a new value for an attribute
#

#Displayone
#/find contact first
#if you find the contact, display it