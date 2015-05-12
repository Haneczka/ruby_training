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

  def set_x_position(x)
    @x = x 
  end
  
  def set_y_position(y)
    @y = y 
  end
 
end

class Game
	def initialize()
	end
 
  
  def add_object(object)
    #if unless object == nil
    #@objects<<object
      #if object.is_a?(Wall)
        #@wall_position = object.get_x_position
      #end
    #end
    
    unless object == nil
     @ids = [] unless @ids
     @objects = [] unless @objects
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
      #object = get_object(object_id)
      if move(object_id, direction) == false
        return false
      else
        return true
      end
       #if object.get_x_position = @wall_position
       # return false
       #end  
    end
  end
 
private
  #def check_if_it_is_free (object)
      #taken = {} unless taken
      #expected = {}
      #object.get_x_position
      #object.get_y_position
        #@objects.each do |obj|
        #taken = {obj.get_x_position => obj.get_y_position}
        #end
        #expected = {object.get_x_position => object.get_y_position}
        #if taken.detect {|key,val| val == object.get_y_position} == [:object.get_x_position, object.get_y_position]
          #return false
        #else
           #case direction.to_s
            #when 'right'
            #object.set_x_position(object.get_x_position+1) 
            #when 'left'
            #object.set_x_position(object.get_x_position-1)
            #when 'up'
            #object.set_y_position(object.get_y_position+1)
            #when 'down'
            #object.set_y_position(object.get_y_position-1)
           #end
        #end   
  #end
  
  #def speculating (current_location)
    #case @direction.to_s
      #when 'right'
      #@new_x = @current_x+1
      #when 'left'
      #@new_x = @current_x-1
      #when 'up'
      #@new_y = @current_y+1
      #when 'down'
      #@new_y = @current_y-1
    #end
    #return @new_x, @new_y
  #end 

  def move(object_id,direction)
    object = get_object(object_id)
    @new_x = object.get_x_position
    @new_y = object.get_y_position
    
    case direction.to_s
      when 'right'
      @new_x = object.get_x_position+1
      when 'left'
      @new_x = object.get_x_position-1
      when 'up'
      @new_y = object.get_y_position+1
      when 'down'
      @new_y = object.get_y_position-1
    end
    
    @objects.each do |obj|
    
      if obj.get_x_position == @new_x
        if obj.get_y_position == @new_y
         return false
        else 
          object.set_x_position(@new_x)
          object.set_y_position(@new_y)
        end 
      else 
        object.set_x_position(@new_x)
        object.set_y_position(object.get_y_position)
      end 
      
    end
  end 
  
 
  def is_already_object_in_database (id)
    if @objects.select { |p| p.get_id()==id }.first != nil
      return true
    else
      return false
    end
  end

  
end


#zanim poruszę sprawdzam czy proponowana miejscówka jest wolna (iteruję po @objects)
#jeśli jest wolna wykonuję move na playerze (set_position), jeśli  nie, zwracam false , a położenie playera pozostaje nie zmienione

# przenieść funkcję move do gry, a playerowi wprowadzić set_position 