
require_relative './rolodex.rb'
require_relative './contact.rb'

class CRM
	attr_reader :name

	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
	end

	def print_main_menu
		puts "[1] Add a contact"
		puts "[2] Modify a contact"
		puts "[3] Display all contacts"
		puts "[4] Display one contact"
		puts "[5] Display an attribute"
		puts "[6] Delete a contact"
		puts "[7] Exit"
		puts "Enter a number:"
	end

	def main_menu
		puts "Welcome to #{@name}"

		while true
			print_main_menu
			input = gets.chomp.to_i
			choose_option(input) #Passes variable to other method by using parameters
			return if input == 7
		end
				
	end

	def choose_option(option)
		case option
			when 1 then add_contact
			when 2 then modify_contact
			when 3 then display_contacts
			when 4 then display_contact
			when 5 then display_attribute
			when 6 then delete_contact
			when 7 
					puts "Goodbye"
					return
				else
					puts "Incorrect option, try again"
		end
		
	end

	def add_contact
			puts "provide contact details"

			print "Firstname: " 
			firstname = gets.chomp

			print "Last name: " 
			lastname = gets.chomp

			print "Email: " 
			email = gets.chomp

			print "Notes: "
			note = gets.chomp

			new_contact = Contact.new(firstname, lastname, email, note)
			@rolodex.add_contact(new_contact)
		end


	def display_contacts
		@rolodex.contacts.each do |x|
			puts "id: #{x.id}, FIRST NAME: #{x.firstname}, LAST NAME: #{x.lastname}, EMAIL: #{x.email}, NOTE: #{x.note}"
		end
	end

	def display_contact
		print "Who are you looking for? Please input a firstnamename: "
		find_contact = gets.chomp
		find = @rolodex.searchcontact(find_contact)
		
	end

	def display_attribute
		puts "Enter an attribute to display: first, last, email, or note"
		attribute = gets.chomp
		@rolodex.attribute_id(attribute)

	end

	
	def delete_contact
		puts "Enter ID that you want to delete"
		deleteuserid = gets.chomp.to_i
		@rolodex.delete_id(deleteuserid)
	end

end





bitmaker = CRM.new("gdgfhdgfhdgfh")
bitmaker.main_menu
