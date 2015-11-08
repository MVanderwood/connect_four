class Board
  attr_accessor :board

  def initialize
    @board = [
    ["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
    ["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
    ["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
    ["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
    ["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
    ["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
    ["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"]
    ]
  end

  def display_board
    @board.each do |line|
      p line.join
    end
  end

  def check_for_victory(move)
    symbol = @board[move[0]][move[1]]
    p symbol
    victory = false
    pieces_in_a_row = 0
    check_horizontal = true
    check_left = true
    check_right = true
    while check_horizontal
      if pieces_in_a_row >= 4
        victory = true
        break
      end
      while check_left
        index = 1
        if symbol == @board[move[0] - index][move[1]]
          pieces_in_a_row += 1
        else
          check_left = false
        end
        index += 1
      end
      while check_right
        index = 1
        if symbol == @board[move[0] + index][move[1]]
          pieces_in_a_row += 1
        else
          check_right = false
        end
        index += 1
      end
      if check_left == false && check_right == false
        check_horizontal = false
        pieces_in_a_row = 0
      end
    end
  end
end