def all
	zbior = {:key1 =>"hejo", :key2 => "siemka"}
	zbior.each do |klucz, wartosc|
		puts klucz.to_s+" "+wartosc
	end
end


all