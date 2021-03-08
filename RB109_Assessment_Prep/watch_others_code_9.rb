# You are going to be given an array of integers
# Your job is to take that array and find an index N
# where the sum of the integers to the left of N
# is equal to the sum of the integers to the
# right of N
# **if there is no index that would make this happen, return -1**

# For example:
# Given array [1, 2, 3, 4, 3, 2, 1]
    # return index 3 which is integer 4
    # [1, 2, 3] or [0..2] sum is equal to the sum [3, 2, 1] or [4..6]
    #arr.slice(0, n) == [1, 2, 3]
    #arr.slice((n+1), arr.length - 1)

# Method will return the index 3, because at the 3rd position of the array
# the sum of left side of the index [1, 2, 3] and the sum of the right side of
# the index [3, 2, 1] both equal 6


##Data Structure##
# input: array
# output: integer (representing an index)

##Pseudocode##
# Do a loop
#   n (will act as counter, and return)
#   Slice array at start, to n (save as value first_subarray)
#   Slice array at n + 1, to arr.length -1 (save as value second_subarray)
#   If the first subarrays sum equals second subarray sum, break
#   if that never happens, return -1


def find_even_index(arr)
  n = 0
  loop do
    first_subarray = arr.slice(0, n)
    second_subarray = arr.slice((n + 1), (arr.length - 1))


    if first_subarray.sum == second_subarray.sum
      return n
    end
    n += 1
    break if n >= arr.length
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3