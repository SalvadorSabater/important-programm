class Car

	def initialize(sound="bruuummPorDefecto")
    @noise = sound
    #@cities = []
    @cities = "cities.txt"
  end

	def make_noise
		puts @noise
	end

	def self.make_noise_X2(car)
		car.make_noise
		car.make_noise
	end

	def add_city(city)
		#@cities.push(city)
		content = IO.read @cities
		IO.write(@cities, content + " " + city)
	end

	def show_cities
		#puts @cities
		IO.read(@cities)
	end
end

class RacinCar < Car
	def initialize
		super "BRRUUUMMM"
  end
end

class PapaCar < Car

	def initialize
		super("fkajsdlk")
		@descapotable = true


		def tapar_capota
			@descapotable = !@descapotable
			puts @descapotable
		end

  end

end

opel = Car.new("bruuum")
#opel.make_noise
ferrari = Car.new("BRRROOOMMMM")
#ferrari.make_noise
sinSonido = Car.new()
#sinSonido.make_noise
#Car.make_noise_X2(ferrari)
opel.add_city("Alaior")
opel.add_city("Madrid")
opel.add_city("Barcelona")
opel.add_city("Miami")
opel.show_cities
toro_rosso = RacinCar.new
toro_rosso.make_nois
ecoche_papa = PapaCar.new
coche_papa.tapar_capota
coche_papa.tapar_capota