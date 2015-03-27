
def przywitaj(osoba)
	puts osoba
	if osoba.class == Hash && osoba[:imie] && osoba[:nazwisko]
		p "Good morning " + osoba[:imie] + " " + osoba[:nazwisko]
		
	else
		p "nie znam Cie, wyjdz"
	end
	
end

#osoba = {:imie =>"Hanna", :nazwisko => "jest najlepsza"}
#przywitaj(osoba)
#przywitaj("Hania")


def czym_jest_wprowadzony_argument(argument)
	case argument
		when String
			puts "It's a string."
		when argument.class === Fixnum
			puts "It's a number"
		when argument.class == Hash
			puts "It's a symbol"
		else 
			puts "I have no idea ("+argument.class.to_s+")"
	end		
end


czym_jest_wprowadzony_argument(true)