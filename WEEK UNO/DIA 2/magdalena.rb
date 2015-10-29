class Magdadlena
	@@ = "Pastelería Ironhack"

	def initialize (color, sabor)
		@color = color
		@sabor = sabor
	end

	def sacar_info
		puts @color
		puts @sabor
		puts @@nombre
	end

	def self.show_pasteleria #metodo de clase
		puts @@nombre
	end

	def show_pasteleria #metodo de instancia. Aquí sólo acceden los objetos instanciados
		puts @@nombre
	end
end

my_choco = Magdalena.new("marron", "chocolate") #my_choco es un objeto instanciado
my_fresa = Magdalena.new("rojo", "fresa")
my_fresa.sacar_info
my_choco.sacar_info

Magdalena.show_pasteleria #invoco el método de clase a una magdalena que no es una instancia
													#pero no le puedo invocar un m,etodo de instancia. Magdalena es una clase