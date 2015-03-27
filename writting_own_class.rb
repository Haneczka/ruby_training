class Human
	def initialize(name,weight,height)
		@name = name
		@weight = weight
		@height = height
	end
	
	def presentation
		p @name+" "+@weight+" "+@height
	end
	
end
		
hum1 = Human.new("Jola","50","160")
hum2 = Human.new("Gienek","70","180")
hum3 = Human.new("Zosia","55","170")

hum1.presentation
hum2.presentation
hum3.presentation

def prison(woman1,man1,woman2)
	cage = [woman1,man1,woman2]
	p cage
end

prison(hum1,hum2,hum3)

cage = []
cage << hum1
cage << hum2

cage.each do |prisoner|
	prisoner.presentation
end