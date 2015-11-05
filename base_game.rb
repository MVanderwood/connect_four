board_array = [
["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"], 
["[_]", "[_]", "[_]", "[_]", "[_]", "[_]", "[_]"]
]
while true
  puts "What would you like to do?"
  input = gets.chomp
  if input == "board"
    board_array.each do |line|
      p line.join
    end
  elsif input == "exit"
    break
  elsif input == "move"
    p "Which slot would you like to move on?"
    move_input = gets.chomp.to_i - 1
    board_array.each_with_index do |line, index|
      if (line[move_input] == "[X]" || line[move_input] == "[O]") && index == 0
        puts "ERROR! INVALID MOVE. TRY AGAIN!"
      elsif line[move_input] == "[X]" || line[move_input] == "[O]"
        board_array[index - 1][move_input] = "[X]"
        break
      elsif index == 6
        board_array[index][move_input] = "[X]"
        break
      end    
    end
    board_array.each do |line|
      p line.join
    end
  end
  puts "The cpu will play now."
  move_input = rand(0..6)
    board_array.each_with_index do |line, index|
      if (line[move_input] == "[X]" || line[move_input] == "[O]") && index == 0
        puts "This column is full, please choose another."
        break
      elsif line[move_input] == "[X]" || line[move_input] == "[O]"
        board_array[index - 1][move_input] = "[O]"
        break
      elsif index == 6
        board_array[index][move_input] = "[O]"
        break
      end    
    end
    board_array.each do |line|
      p line.join
    end
end