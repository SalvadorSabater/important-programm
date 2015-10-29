require 'pry'
cities = ["miami", "madrid", "barcelona"]

biggest = cities.reduce do |longest_city, candidate_city| 
	candidate_city.length > longest_city.length ? candidate_city : longest_city
end

puts biggest