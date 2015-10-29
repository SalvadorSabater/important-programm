class Car

	def initialize noise, engine
	@noise = noise
	@engine = engine
	end

	def make_noise
		puts @noise
		@engine.make_noise
	end

class Engine

	def initialize noise
	@noise = noise
	end

	def make_noise
		puts @noise
	end

	vw = Engine.new("brum")
	s = Engine.new("brooom")
	
	cvw = Car.new("braam", vw)