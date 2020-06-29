# https://www.codewars.com/kata/5753b987aeb792508d0010e2

class Array
  def every(interval = 1, start_index = 0)
    return self if interval == 1 && start_index == 0

      new_array = self[start_index..-1]
      return new_array.each_slice(interval).map(&:last)
  end
end

[0,1,2,3,4].every      # [0,1,2,3,4]
[0,1,2,3,4].every(1)   # [0,1,2,3,4]
[0,1,2,3,4].every(2)   # [0,2,4]
[0,1,2,3,4].every(3)   # [0,3]
[0,1,2,3,4].every(1,3) # [3,4]
[0,1,2,3,4].every(3,1) # [1,4]
[0,1,2,3,4].every(3,4) # [4]
