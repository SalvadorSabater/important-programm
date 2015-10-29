def game
	acertado = false

	puts "Escribe tu nombre"
	name = gets
	random = rand(1..100)
	intento = 0
	intentos_permitidos = 10
	puts random
	puts "Dime el numero que has pensado"
	num = gets.chomp

	while !acertado || intento <= intentos_permitidos
		puts "Intenta otro numero"
		num = gets.chomp
		if num.to_i == random
				puts "Muy bien #{name} el #{num} es el numero que habia pensado"	
				acertado = true
		else
			if num.to_i < random
				puts "el numero es mayor al que has introducido"	
			else
				puts "el numero es menor al introducido"
			end		
		end	
		intento =+ 1	
	end

end

game