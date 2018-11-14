# Helper Method

 board = [ " ", " ", "O", "O", " ", "O", "X", "X", "X" ]
 
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
  win_index_1 =  board[win_combo[0]]
  win_index_2 =  board[win_combo[1]]
  win_index_3 =  board[win_combo[2]]
  
  if win_index_1 == "X" && win_index_2 == "X" && win_index_3 == "X" || win_index_1 == "O" && win_index_2 == "O" && win_index_3 == "O" 
  return win_combo
  end
 end
  return false
end

def full?(board)
  board.each do |index|
    if index == " " || index == ""
      return false
    else
      return true 
    end
end   
