require_relative 'fatties_in_prison'

hum1 = Human.new("Jola","50","160")
hum2 = Human.new("Gienek","70","180")
hum3 = Human.new("Zosia","55","170")

cage = []
cage << hum1
cage << hum2
cage << hum3

fatty = looking_for_fatty(cage)
p fatty