class Computer_player

  def move(board)
    board = board.board
    puts "The cpu will play now."
    move_input = rand(0..6)
    move_x = move_input
    move_y = 0
    board.each_with_index do |line, index|
      if (line[move_input] == "[X]" || line[move_input] == "[O]") && index == 0
        break
      elsif line[move_input] == "[X]" || line[move_input] == "[O]"
        board[index - 1][move_input] = "[O]"
        move_y = index - 1
        break
      elsif index == 6
        board[index][move_input] = "[O]"
        move_y = index
        break
      end    
    end
    board.each do |line|
      p line.join
    end
    return [move_y, move_x]
  end

end