def turn (board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
<<<<<<< HEAD
  if valid_move?(board, index)
    move(board, index, player = "X")
    display_board(board)
  else 
    turn(board)
=======
  if index.between?(0, 8) 
    move(board, index, player = "X")
    display_board(board)
  elsif index.between?(0, 8) == false
    turn(board)
    elsif valid_move?(board, 0) 

  
>>>>>>> 15afd4bcfe4919ca72a6ab246c0a0080e9dc733d
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
<<<<<<< HEAD
  if position_taken?(board, index) && index.between?(0, 8) 
=======
  if position_taken?(board, index)  == true && index.between?(0, 8) == false
>>>>>>> 15afd4bcfe4919ca72a6ab246c0a0080e9dc733d
    return false
elsif position_taken?(board, index)  == false && index.between?(0, 8) == true
 return true
end
end