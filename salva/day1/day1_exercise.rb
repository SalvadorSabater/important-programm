class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

homes.each do |hm|
  puts hm.name + " in " + hm.city + "\nPrice: $#{hm.price} a night\n\n" 
end

cities = homes.map do |hm|
  hm.city
end

=begin
avg = homes.map do |hm|
  hm.price
end

avg_price =  avg.reduce(0.0) do |price1, price2| price1 + price2
end

puts "The avarage price is #{avg_price / avg.size}"
=end

avg_price = 0.0

total_price = homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts "The average price is: #{total_price / homes.length}"



total_capacities = 0.0

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is: #{total_capacities / homes.length }"

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end



san_juan_homes = homes.select do |hm|
  # retorna ladireccion de memoria donde estan las casas de "san juan"
  hm.city == "San Juan"
end

puts san_juan_homes[0].name


high_capacity_homes = homes.select do |hm|
  # Keep hm only if its capacity is 4 or greater
  hm.capacity >= 4
end

puts high_capacity_homes[0].name

high_capacity_homes.each do |name|
		puts name.name
	end

home_41_dollars = homes.find do |hm|
  # Is hm's price $41?
  hm.price == 41
end

puts "The first home that costs $41 is:"
puts home_41_dollars.name

sorted = homes.sort do |home1, home2|
  # Compare the two homes by their capacity
  home1.capacity <=> home2.capacity
end

puts sorted

rng = 1..42

rng.each do |number|
  puts "The next number in the range is: #{number}"
end

hellos = {
  :english => "Hello",
  :spanish => "Hola",
  :french => "Bonjour"
}

hellos.each do |language, word|
  puts "The word for Hello in #{language} is: #{word}."
end