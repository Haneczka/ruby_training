def	wybor (something)
	result = true
	case something
		when "truth"
			puts "Hania is the best"
		when "nice"
			puts "Hania is awesome"
		when "interesting"
			puts "Hania is brilliant"
		else
			puts "Type truth, nice or interesting."
			result = false
	end
	return result
end 		
	


def mozliwosci
	puts "Menu"
	puts "If you want to get to know the truth type: truth ."
	puts "If you want to hear something nice type : nice ."
	puts "If you want to hear something interesting type : interesting . "
	
	while !wybor(gets.chop) == true do
	end
	
	#efekt = false
	#while !efekt do
	#	efekt = wybor(gets.chop)
	#end
	
	#efekt = false
	#until efekt do
	#	efekt = wybor(gets.chop)
	#end
	
	#p efekt
end	

mozliwosci	


	 