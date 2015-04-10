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

p "Whose weight wolud you like to get to know?"
name_input = gets.chop!

cage = []
cage << hum1
cage << hum2
cage << hum3

#cage.each do |prisoner|
	#prisoner.presentation
#end

cage.each do |prisoner|
	prisoner.introducing
	if prisoner.name == name_input 
		p "I found #{name_input} he or she is " + prisoner.weight + " kg."
	end
end
puts "\n"
p "Which of us would you like to know more about? "
choice = gets.chop!

case choice
	when "Hania"
		cage[0].presentation 
	when "Gien"
		cage[1].presentation
	when "Zosia"
		cage[2].presentation
	else
		p "You gave me #{choice} -- I have no idea what to do with that."
end


