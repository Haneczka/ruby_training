require_relative 'fatties_in_prison'

def should_be_equal(arg1, arg2)
	if arg1 == arg2
		p "OK"
	else 
		p "Failed, " + arg1.to_s + " is not equal to " + arg2.to_s
	end
end

cage = [Human.new("Jola","50","160")]
should_be_equal("Jola", looking_for_fatty(cage))

cage = [Human.new("Jola","50","160"), Human.new("Gienek","70","180")]
should_be_equal("Gienek", looking_for_fatty(cage))

cage = [Human.new("Jola","50","160"), Human.new("Gienek","50","180")]
should_be_equal("Gienek", looking_for_fatty(cage))

cage = [Human.new("Jola","50","160"),
	Human.new("Gienek","70","180"),
	Human.new("Zosia","55","170"),
	Human.new("Bodek","80","190"),
	Human.new("Helga","120","203"),
	Human.new("Bronek","120","165")]
should_be_equal("Bronek", looking_for_fatty(cage))

cage = []
should_be_equal("", looking_for_fatty(cage))