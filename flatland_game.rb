class ObjectOnMap
  def initialize(x = 0, y = 0, id = 0)
    @x = x
    @y = y
    @id = id
  end

  def get_x_position()
    return @x
  end

  def get_y_position()
    return @y
  end
  
  def get_id()
    return @id
  end
  
end

class Wall < ObjectOnMap
  def initialize(x, y, id, durability)
    @x = x
    @y = y
    @id = id
    @durability = durability
  end
  
  def set_durability(d)
    @durability = d 
  end
  
  def get_durability()
    return @durability
  end
  
end

class Player < ObjectOnMap

  def move(direction)
	case direction.to_s
		when 'right'
		@x = @x+1
		when 'left'
		@x = @x-1
		when 'up'
		@y = @y+1
		when 'down'
		@y = @y-1
	end
    return @x,@y
  end 

end

class Game
	#def initialize()
		#@gamers = []
	#end
  def add_player(player)
	@gamers = [] unless @gamers
	unless player == nil
  	@ids = [] unless @ids
		unless @ids.include?(player.get_id())
			@ids << player.get_id()
			@gamers << player
			return true
		else
			return false
		end
	end
  end

  def get_players()
	@gamers = [] unless @gamers
    return @gamers
  end
  

  
  def get_player(id)
    @gamers.select { |p| p.get_id()==id }.first
  end

 def move_player(player_id, direction)
	if get_player(player_id) == nil
		return false
	else 
		player = get_player(player_id)
		player.move(direction)
		return true
	 end
  end
  
 private
 
  def is_already_player_in_database (id)
    if @gamers.select { |p| p.get_id()==id }.first != nil
      return true
    else
      return false
    end
  end

end