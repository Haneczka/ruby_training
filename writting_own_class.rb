class Human
	attr_reader :name, :weight, :height

	def initialize(name,weight,height)
		@name = name
		@weight = weight
		@height = height
	end
	
	def presentation
		p @name+" "+@weight+" "+@height
	end
	
	def introducing
		p "My name is "+@name
	end
end
	
				
hum1 = Human.new("Jola","50","160")
hum2 = Human.new("Gienek","70","180")
hum3 = Human.new("Zosia","55","170")

cage = []
cage << hum1
cage << hum2
cage << hum3


name_weight = {}
highest_weight = hum1.weight
fat_name = hum1.name
cage.each do |prisoner|
	prisoner.introducing
	if prisoner.weight > highest_weight
		fat_name = prisoner.name
		highest_weight = prisoner.weight
	end	
	
	#jesli waga prisonera jest wieksza niz zapamietana
	# -> zapisz jego wage i imie
end

 p "The fattest human in this cage is " +fat_name+ "."
 p "And he weighs "+highest_weight+" kg."
