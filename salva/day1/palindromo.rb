=begin
	
rescue Exception => e
	
end
def is_palindrome?(frase)
	clean_palindrome = frase.downcase.gsub(" ","").gsub(",","")
	clean_palindrome == clean_palindrome.reverse 
end

def is_palindrome_words?(frase)

	frase.downcase!
	words = frase.split
	return words == words.reverse

end

str3 = "Fall leaves as soon as leaves fall"
puts is_palindrome_words?(str3)

=end

def app
	puts "escribe una palabra"
	var = gets
	puts var
end

app