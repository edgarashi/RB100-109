# The maximum sum subarray problem consists in finding the maximum
# sum of a contiguous subsequence in an array of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# ----should be 6: [4, -1, 2, 1]
# Easy case is when array is made up of only positive numbers
# and the maximum sum is the sum of the whole array.
# If the array is made up of only negative numbers, return 0
# instead

# Empty array is considered to have zero greatest sum.
# Note that the empty array is also a valid subarray

##Problem##
# must fin maximum sum subarray
# essentially the subarray that running .sum on gives the
# biggest sum for

# option 1)
#   create a subarray method that divides array into multiple subarrays
#     has to be every possible subarray though
#     methodology?
#       could have two counters
#       one counting up as index
#       one countding down as negative index
#       and adding that range to the subarray


#   << these sums into a result_array
#   find the .max of the result_array
#   *ALSO if array is empty/has one element
#     just return 0*

def max_sequence(arr)
  if arr.length == 0 || arr.all? {|num| num < 0}
    0
  elsif arr.length == 1
    arr.sum
  else
    subarray(arr).max
  end
end

def subarray(arr)
  clone_array = arr.dup
  arr2 = []
  arr3 = []
  arr3 << clone_array[-1]
  sum_array = []
  negative_index = -1
  index = 0
  loop do
    sum_array << arr3.sum
    sum_array << arr2.sum

    arr2 << arr[negative_index]
    arr2.prepend(arr[index])

    negative_index -= 1
    index += 1
    arr3.prepend(arr[negative_index])
    break if index == arr.length
  end
  sum_array
end







p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
