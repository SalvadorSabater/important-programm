
def game
	random = rand(1..100)
	intento = 1
	intentos_permitidos = 10

	puts "Escribe tu nombre"
	name = gets.chomp
	puts "Dime el numero que has pensado"
	num = gets.to_i

	while num != random && intento <= intentos_permitidos	

		if num < random
			puts "el numero es mayor al que has introducido"				
		else
			puts "el numero es menor al introducido"
		end

		puts "Intenta otro numero"
		num = gets.chomp		
		
		intento =+ 1
	end

	if(intentos_permitidos>0)
		puts "Muy bien #{name} el #{num} es el numero que habia pensado"
	else 
		puts "Hasperdido"
	end

end

game