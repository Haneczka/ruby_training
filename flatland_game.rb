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
  def add_object(object)
	@objects = [] unless @objects
	unless object == nil
  	@ids = [] unless @ids
		unless @ids.include?(object.get_id())
			@ids << object.get_id()
			@objects << object
			return true
		else
			return false
		end
	end
  end

  def get_all_objects()
	@objects = [] unless @objects
    return @objects
  end
  
  def get_object(id)
    @objects.select { |p| p.get_id()==id }.first
  end

 def move_object(object_id, direction)
	if get_object(object_id) == nil
		return false
	else 
		object = get_object(object_id)
		object.move(direction)
		return true
	 end
  end
  
 private
 
  def is_already_object_in_database (id)
    if @objects.select { |p| p.get_id()==id }.first != nil
      return true
    else
      return false
    end
  end

end