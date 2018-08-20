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

def move(board, index, current_player = "X")
  board[index] = current_player
end

def valid_move?(board, index)
  if (board[index] == " ")
    return true
  elsif (board[index] == nil)
    return nil
  elsif (board[index] == "x") || (board[index] == "o")
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else (board[index] == "x") || (board[index] == "o")
    return true
  end
end
