# Helper Method

 board = [ " ", " ", " ", " ", " ", " ", " ", " ", " " ]
 
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5], 
  [6, 7, 8], 
  [0, 4, 8], 
  [6, 4, 2], 
  [0, 3, 6], 
  [1, 4, 7], 
  [2, 5, 8]
  ]
  

def won?(board)
 WIN_COMBINATIONS.each do |win_combo|
    #win_combo.each{|win_index|}
  win_index_1 = win_combo[0]
  win_index_2 = win_combo[1]
  win_index_3 = win_combo[2]
  
  if board[win_index[0]] == "X" && board[win_index[1]] == "X" && board[win_index[2]] == "X" ||
  #return win_combo
  #elsif
    board[win_index[0]] == "O" && board[win_index[1]] == "O" && board[win_index[2]] == "O"
  return win_combo
  end
 end
  return false
end
