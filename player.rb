class Player

  def board(board)
    board = board.board
    board.each do |row|
      p row.join
    end
  end

  def move(move_input, board)
    move_x = move_input
    move_y = 0
    board.each_with_index do |line, index|
      if (line[move_input] == "[X]" || line[move_input] == "[O]") && index == 0
        puts "ERROR! INVALID MOVE. TRY AGAIN!"
      elsif line[move_input] == "[X]" || line[move_input] == "[O]"
        board[index - 1][move_input] = "[X]"
        move_y = index - 1
        break
      elsif index == 6
        board[index][move_input] = "[X]"
        move_y = index 
        break
      end   
    end
    return [move_y, move_x]
  end
end