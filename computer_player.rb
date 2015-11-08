class Computer_player

  def move(board)
    board = board.board
    puts "The cpu will play now."
    move_input = rand(0..6)
    board.each_with_index do |line, index|
      if (line[move_input] == "[X]" || line[move_input] == "[O]") && index == 0
        puts "This column is full, please choose another."
        break
      elsif line[move_input] == "[X]" || line[move_input] == "[O]"
        board[index - 1][move_input] = "[O]"
        break
      elsif index == 6
        board[index][move_input] = "[O]"
        break
      end    
    end
    board.each do |line|
      p line.join
    end
  end

end