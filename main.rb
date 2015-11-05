require_relative "computer_player"
require_relative "player"
require_relative "board"

def player_turn
  while true
    puts "It's your turn, what would you like to do?"
    input = gets.chomp
    if input == "board"
      #display board via player.board method
      break
    elsif input == "move"
      #run player.move method
      break
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