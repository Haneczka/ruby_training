def ile_liter(zdanie)
	puts zdanie
	end
	
	ile_liter "zadanie"
	#ile_liter "zadanie"*10

	tablica_slow = zdanie.split(' ')
	puts tablica_slow
	a = tablica_slow[0].length
	b = tablica_slow[1].length
	c =tablica_slow[2].length
	ilości_liter = [a,b,c]
	najdluzszy= ilości_liter.max
	puts najdluzszy
