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
      move_input = gets.chomp.to_i - 1
      if (0..6).include?(move_input)
        @move_to_check = @player.move(move_input, @board.board)
        @player.board(@board)
        break
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
      @game_on = false
      break
    else
      puts "Please use a proper command."
    end
  end
end

@game_on = true
@board = Board.new
@player = Player.new
@computer_player = Computer_player.new

while @game_on
  player_turn
  @board.check_for_victory(@move_to_check)
  if @game_on
    move_to_check = @computer_player.move(@board)
    @board.check_for_victory(move_to_check)
  end
end























