def	wybor (something)

	case something
		when "truth"
			puts "Hania is the best"
		when "nice"
			puts "Hania is awesome"
		when "interesting"
			puts "Hania is brilliant"
		else
			puts "Type truth, nice or interesting."
			return false
	end
	return true
end 		
	


def mozliwosci
	puts "Menu"
	puts "If you want to get to know the truth type: truth ."
	puts "If you want to hear something nice type : nice ."
	puts "If you want to hear something interesting type : interesting . "
	#input = gets
	#p input
	#input.chop!
	#p a
	#wybor(input)
	p wybor(gets.chop) 
end	

mozliwosci	

#	if numer = 1
	#p "Hania is the best"
	#end
#	if numer = 2
#	p "Hanah is awsome"
#	if numer = 3
#	p "Hanah is the most brilliant person ever"
	 