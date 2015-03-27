	
def statystyka(dane)
	ilosc_wpisow = dane.count
	#puts "rozmiar:"
	puts "rozmiar:"+ ilosc_wpisow.to_s
	unikalne = dane.uniq.count
	puts "ilosc unikalnych:" + unikalne.to_s
	puts "pierwszy:" + dane[0]
	puts "ostatni:" + dane[-1]
end

statystyka(["cos","cos","cos_innego"])
