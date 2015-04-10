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

def looking_for_fatty(container)
	if container.length <=0
		fat_name = ""
	else
		highest_weight = container[0].weight
		fat_name = container[0].name
	
		container.each do |prisoner|
			if prisoner.weight.to_i >= highest_weight.to_i
				fat_name = prisoner.name
				highest_weight = prisoner.weight
			end	
		end
	end
	return fat_name
end
