def dodaj(a,b)
	puts a+b
end


def pierwszy_duzymi (zdanie,inne)
	puts zdanie
	tablica_slow = zdanie.split(' ')
	
	tablica_slow.each do |slowo|
		slowo.downcase!
	end
	
	puts tablica_slow
	tablica_slow[inne] = tablica_slow[inne].upcase
	puts tablica_slow
	tablica_slow.join(" ")
end

#najdluzszy wyraz
#"napis".length

def ile_ma_najdluzszy_wyraz (zdanie)
	puts zdanie
	tablica_slow = zdanie.split(' ')
	puts tablica_slow
	a = tablica_slow[0].length
	b = tablica_slow[1].length
	c =tablica_slow[2].length
	ilości_liter = [a,b,c]
	najdluzszy= ilości_liter.max
end