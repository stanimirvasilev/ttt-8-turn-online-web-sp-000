def turn (board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, player = "X")
    display_board(board)
  else 
    turn(board)
  end
end

#Helper methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
user_input.to_i - 1
end

def move(board, index, player = "X")
board[index] = player
end

def position_taken? (board, index)
  if board[index] == " " || board[index]  == "" || board[index]  == nil
    return false
  elsif board[index]  == "X" || board[index]  == "O"
    return true
  else 
end
  end
  
  def valid_move?(board, index) 
  if position_taken?(board, index) && index.between?(0, 8) 
    return false
elsif position_taken?(board, index)  == false && index.between?(0, 8) == true
 return true
end
end