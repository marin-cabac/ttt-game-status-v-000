# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]


def won?(board)

  i=0
  while i<WIN_COMBINATIONS.length

     pos_1=board[WIN_COMBINATIONS[i][0]]
      pos_2=board[WIN_COMBINATIONS[i][1]]
      pos_3=board[WIN_COMBINATIONS[i][2]]

  if pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
     WIN_COMBINATIONS[i] # return the win_combination indexes that won.
    break
  else
    false
    i+=1
  end

end

end
