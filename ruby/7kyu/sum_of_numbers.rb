# https://www.codewars.com/kata/55f2b110f61eb01779000053

def get_sum(a,b)
  return a if a == b
  
  sorted_array = [a, b].sort

  (sorted_array[0]..sorted_array[1]).sum
  end
end

get_sum(5, -1)
