# You are given an unsorted array containing all the integers from 0 to 100 inclusively. However, one number is missing. Write a function to find and return this number.
# https://www.codewars.com/kata/57f5e7bd60d0a0cfd900032d/train/ruby

def missing_no(nums)
  sum_of_hundred = (0..100).to_a.reduce(:+)
  sum_of_nums = nums.reduce(:+)

  sum_of_hundred - sum_of_nums
end

nums = (0..100).to_a - [5]
missing_no(nums)
# 5

nums = (0..100).to_a - [10]
missing_no(nums)
# 10
