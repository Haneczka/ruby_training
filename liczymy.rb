napis = "Iterators are nothing but methods supported by collections. Objects that store a group of data members are called collections. In Ruby, arrays and hashes can be termed collections.Iterators return all the elements of a collection, one after the other. We will be discussing two iterators here, each and collect. Let's look at these in detail."
napis2 = "To be or not to be be or or to be be nice"
def statystyka(napis)
	tablica = napis.split
	#p tablica
	liczydlo = {}
	
		tablica.each do |klucz|
			#puts klucz
			if liczydlo[klucz] == nil
				liczydlo[klucz] = 1
			else 
				liczydlo[klucz] = liczydlo[klucz]+1		
				
			end
			
		end
	liczydlo.each do |klucz,wartosc|
	#puts klucz+" "+wartosc.to_s
	end
#p liczydlo		
	najczestsze = liczydlo.sort_by{|klucz,wartosc| -wartosc}
	#p najczestsze
	najczestsze.each do |klucz,wartosc|
	puts klucz+" "+wartosc.to_s
	end
end

statystyka(napis2)