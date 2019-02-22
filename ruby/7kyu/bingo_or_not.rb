def bingo(arr)
  bingo_array = [2, 9, 14, 7, 15]
  comparison = bingo_array & arr
  comparison.length == 5 ? 'WIN' : 'LOSE'
end
