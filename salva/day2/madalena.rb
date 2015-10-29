class Madalena
	attr_reader :color #nos crea una get de la variable
	attr_writer :color #nos crea un set de la cariable
	attr_accessor :color #nos crea get y set

	attr_

	@@nombre = "Pasteleria Ironhack"

	def initialize (color, sabor)
		@color = color
		@sabor = sabor
	end

	def sacar_info
		puts @color
		puts @sabor
		puts @@nombre
	end

	def show_pasteleria #metodos de instancia
		puts @@nombre
	end

	def self.show_pasteleria #metodo de clase
		puts @@nombre
	end

	def eat
		"que buena!!"
	end
end

class Cupcake < Madalena
	@@nombre = "Pasteleria Ironhack"

	def initialize (color, sabor, topping)
		super(color, sabor)
		@topping = topping
	end

	def eat
		super + " i bartat!"
	end
end


my_choco = Madalena.new("marron", "chocolate")
my_fresa = Madalena.new("rojo", "fresa")
my_choco.sacar_info
my_fresa.sacar_info
Madalena.show_pasteleria