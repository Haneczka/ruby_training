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
hum1.presentation
