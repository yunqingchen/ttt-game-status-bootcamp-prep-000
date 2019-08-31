# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
#top_row_across = [0,1,2]
#mid_row_across = [3,4,5]
#bottom_row_across = [6,7,8]

#top_row_down = [0,3,6]
#mid_row_down = [1,4,7]
#bottom_row_down = [2,5,8]

#left_diag = [0,4,8]
#right_diag = [2,4,6]

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  
  ]
  
def won?(board)
  WIN_COMBINATIONS.each do |i|
    if board[i] == "X"
      return i
    else
      return false 
    end
  end
end 
  
def full?(board)
    [0,1,2,3,4,5,6,7,8].each do |index|
    if board[index] == "X" || board[index] == "O"
      return true 
    else
      return false 
    end 
  end 
end