class Player
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

  def get_id()
	return @id
  end

end

class Game 
  def add_player(player)
	@player = player
	@gamers = [] unless @gamers
	unless @player == nil
  	@ids = [] unless @ids
		unless @ids.include?(@player.get_id())
			@ids << @player.get_id()
			@gamers <<player
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
    return Player.new
  end

  def move_player(player_id, direction)
  end

end

