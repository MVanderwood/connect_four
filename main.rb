require_relative "computer_player"
require_relative "player"
require_relative "board"

def player_turn
  while true
    puts "It's your turn, what would you like to do?"
    input = gets.chomp
    if input == "board"
      @player.board(@board)
      break
    elsif input == "move"
      p "Which slot would you like to move on?"
      move_input = gets.chomp.to_i
      if (1..7).include?(move_input)
        #run player.move method
      else
        p "ERROR! INVALID MOVE."
      end
    elsif input == "save"
      #run game.save method (way down the road)
      break
    elsif input == "load"
      #run game.load method
      break
    elsif input == "exit"
      #run game/player.exit method
      break
    else
      puts "Please use a proper command."
    end
  end
end

@board = Board.new
@player = Player.new
@computer_player = Computer_player.new

player_turn