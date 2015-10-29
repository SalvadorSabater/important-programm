require pry

class Device
	
	def initialize operating_system, inches
		@operating_system = operating system
		@inches = inches
		@time = Time.now
	end

	def print_time
		@time = Time.now
	end
	
end

class Phone < Device

	def initialize operating_system, inches
		super
		@contacts = []
	end

	def add_contact contact
		@contact << contact
	end

	def show_contact
		@contacts.each do |contact|
			contact.show_contact
	end
	end

	def call_contact name
		
		@contacts.find do |contact|
		 contact == name
		end

	end
end


class SmartSwatch < Device

	def initialize
		
	end
	
end

class Laptop < Device

	def initialize
		super

	end
	
end

class Contact

	def initialize name, number
		@name = name
		@number = number
	end

	def show_contact
		puts "El numero de #{name} es #{number}"
	end
end

c1 = Contact.new("Pedro", 896089)
c2 = Contact.new("Xavier", 634234)
c3 = Contact.new("Juan", 353363)
a1.add_contact c1
a2.add_contact c2
a3.add_contact c3	

end