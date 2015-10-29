
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
  Home.new("Raul's place", "Alaior", 2, 100),
  Home.new("Lluis's place", "Mercadal", 5, 47),
  Home.new("Pau's place", "Alaior", 3, 41),
  Home.new("Joan's place", "Ciutadella", 2, 52),
  Home.new("Sergio's place", "Fornells", 6, 68),
  Home.new("Nizar's place", "Ferreries", 2, 42),
  Home.new("Fernando's place", "Mao", 5, 49),
  Home.new("Josh's place", "Mao", 3, 41),
  Home.new("Gonzalo's place", "Alaior", 2, 45),
  Home.new("Ariel's place", "Ciutadella", 6, 40)
]

def listar(homes)
  homes.each do |hm|
    puts hm.name + " in " + hm.city + "\nPrice: $#{hm.price} a night\n\n" 
  end
end

def sort(homes)
  puts "como desea ordenar (C) de menor a mayor, (D) de mayor a menor, (S) para salir"
  op = gets.chomp.downcase
  while op != 's'
    case op
    when 'c'
      sorted = homes.sort do |home1, home2|
      home1.price <=> home2.price
      end
      sorted.each do |name|
        puts "#{name.name} con precio de #{name.price}"
      end
      puts "como desea ordenar (C) de menor a mayor, (D) de mayor a menor, (S) para salir"
      op = gets.chomp.downcase

    when 'd'
      sorted = homes.sort do |home1, home2|
      home2.price <=> home1.price
      end
      sorted.each do |name|
        puts "#{name.name} con precio de #{name.price}"
      end
      puts "como desea ordenar (C) de menor a mayor, (D) de mayor a menor, (S) para salir"
      op = gets.chomp.downcase
    else
      puts "introduce una letra valida"
      puts "como desea ordenar (C) de menor a mayor, (D) de mayor a menor, (S) para salir"
      op = gets.chomp.downcase
    end
  end
  puts "Apretaste la letra S y saliste de ORDENAR"
end

def filter_by_city(homes, city)
  filter_city = homes.select do |hm|
    hm.city == city
  end
=begin
  filter_city.each do |local|
    puts "#{local.name} con precio de #{local.price}"
  end
=end
  listar(filter_city)
  
end

def avg_locals(homes)
  avg_price = 0.0
  total_price = homes.reduce(0.0) do |sum, hm|
    sum + hm.price
  end
  puts "The average price is: #{total_price / homes.length}"
end

def filter_by_price(homes, price)
  filter_price = homes.select do |hm|
    hm.price <= price.to_i
  end

  filter_price.each do |local|
   puts "#{local.name} con precio de #{local.price}"
  end
end

puts "Que desea hacer?"
puts "1- Listar todos los locales"
puts "2- Ordenar locales"
puts "3- Listar locales por ciudad"
puts "4- Mostrar media de los locales"
puts "5- Listar locales a partir de un precio"
puts "0- Para salir"

op = gets.chomp
while op != '0'
  case op
    when '1'
      listar(homes)
      puts "Que desea hacer?"
      op = gets.chomp
    when '2'
      sort(homes)
      puts "Que desea hacer?"
      op = gets.chomp
    when '3'
      puts "introduce una ciudad"
      city = gets.chomp
      filter_by_city(homes, city)
      puts "Que desea hacer?"
      op = gets.chomp
    when '4'
      avg_locals(homes)
      puts "Que desea hacer?"
      op = gets.chomp
    when '5'
      puts "introduce precio maximo"
      price = gets.chomp
      filter_by_price(homes, price)
      puts "Que desea hacer?"
      op = gets.chomp
    else
    puts "introduce un numero valido"
    op = gets.chomp.downcase
  end
end