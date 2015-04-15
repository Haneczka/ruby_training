require_relative 'flatland_game'

#ugly global variable, to be extracted to class
$tests_stat = {:all => 0, :passed => 0}
def should_be_equal(arg1, arg2)
  $tests_stat[:all] += 1
  if arg1 == arg2
    $tests_stat[:passed] += 1
    puts "OK"
  else
    puts "Test failed: '" + arg1.to_s + "' is not equal to '" + arg2.to_s + "'"
  end
end

#==============================================================================
#Test for flatland game
#==============================================================================


#Test player default initialization
player1 = Player.new()
should_be_equal(0, player1.get_x_position())
should_be_equal(0, player1.get_y_position())

#Test player custom initialization
player1 = Player.new(1,5)
should_be_equal(1, player1.get_x_position())
should_be_equal(5, player1.get_y_position())

#Test player movement
player1 = Player.new(2,2)
player1.move('right')
should_be_equal(3, player1.get_x_position())
should_be_equal(2, player1.get_y_position())

player1 = Player.new(2,2)
player1.move('left')
should_be_equal(1, player1.get_x_position())
should_be_equal(2, player1.get_y_position())

player1 = Player.new(2,2)
player1.move('up')
should_be_equal(2, player1.get_x_position())
should_be_equal(3, player1.get_y_position())

player1 = Player.new(2,2)
player1.move('down')
should_be_equal(2, player1.get_x_position())
should_be_equal(1, player1.get_y_position())

#Test game default initialization
game  = Game.new
should_be_equal([], game.get_players())

#Test adding and getting players to/from game
game = Game.new
player1 = Player.new(2,2,0)
should_be_equal(true, game.add_player(player1))
should_be_equal(1, game.get_players().count)

#Test player id duplication
game = Game.new
player1 = Player.new(2,2,0)
should_be_equal(true, game.add_player(player1))
should_be_equal(1, game.get_players().count)
player2 = Player.new(1,1,1)
should_be_equal(true, game.add_player(player2))
should_be_equal(2, game.get_players().count)
player3 = Player.new(3,3,1)
should_be_equal(false, game.add_player(player3)) #duplicated id
should_be_equal(2, game.get_players().count)

#Test moving player in game
game = Game.new
player1 = Player.new(2,2,0)
should_be_equal(true, game.move_player(0, 'up'))
should_be_equal(2, game.get_player(0).get_x_position())
should_be_equal(3, game.get_player(0).get_y_position())

#Tests summary
puts "\n"+$tests_stat[:passed].to_s+"/"+$tests_stat[:all].to_s+" tests passed."
