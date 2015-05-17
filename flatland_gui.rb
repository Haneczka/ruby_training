#!/usr/bin/ruby
require 'curses'
require_relative './flatland_game'
include Curses

Curses.noecho
Curses.init_screen
Curses.stdscr.keypad(true) # enable arrow keys (required for pageup/down)
Curses.start_color

Curses.init_pair(COLOR_RED,COLOR_RED,COLOR_BLACK)

game = Game.new()
game.add_object(Player.new(7,6,0))
game.add_object(Player.new(10,7,1))
game.add_object(Wall.new(14,3,2,10))
game.add_object(Wall.new(4,7,3,10))
game.add_object(Wall.new(8,5,4,10))
game.add_object(Wall.new(4,5,5,10))

map_start = {:x => 2, :y => 1}
map_size = {:x => 30, :y => 10}
map_end = {:x => map_start[:x]+map_size[:x], :y => map_start[:y]+map_size[:y]}

(map_start[:x]..map_start[:x]+map_size[:x]).each do |x|
  game.add_object(Wall.new(x,map_start[:y],100+x,10))
  game.add_object(Wall.new(x,map_end[:y],200+x,10))
end
(map_start[:y]..map_end[:y]-2).each do |y|
  game.add_object(Wall.new(map_start[:x], y,300+y,10))
  game.add_object(Wall.new(map_end[:x], y,400+y,10))
end
game.add_object(Wall.new(map_end[:x], map_end[:y]-1,500,10))

while true
  Curses.clear

  game.get_all_objects.each do |obj|
    Curses.setpos(map_start[:y]+obj.get_y_position, map_start[:x]+obj.get_x_position)
    if obj.is_a?(Player)
      Curses.addstr("P")
    else
      Curses.attron(color_pair(COLOR_RED)|A_NORMAL){
        Curses.addstr("#")
      }
    end
    Curses.setpos(0,0)
    Curses.refresh
  end

  case Curses.getch
    when Curses::Key::LEFT
      game.move_object(1, 'left')
    when Curses::Key::RIGHT
      game.move_object(1, 'right')
    when Curses::Key::UP
      game.move_object(1, 'down')
    when Curses::Key::DOWN
      game.move_object(1, 'up')
  end

end
