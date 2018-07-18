# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #toprow win
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
WIN_COMBINATIONS.each do |combinations|
  if board[combinations[0]] == "X" && board[combinations[1]] == "X" && board[combinations[2]] == "X"
    return combinations
  elsif board[combinations[0]] == "O" && board[combinations[1]] == "O" && board[combinations[2]] == "O"
    return combinations
  end
end
false
end
