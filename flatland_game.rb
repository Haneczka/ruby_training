class Player
  def initialize(x = 0, y = 0)
	@x = x
	@y = y
  end

  def get_x_position()
    return @x
  end

  def get_y_position()
    return @y
  end

  def move(direction)
    return nil
  end
end

