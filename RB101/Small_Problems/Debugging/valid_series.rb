###VALID SERIES###

# valid_series? method checks whether a series of number is valid
# for this exercise, valid series of numbers must contain THREE ODD NUMBS
# numbers in series must sum to 47




def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false


# just had to change odd_count = 3 ? true : false to
# odd_count == 3 ? true : false
# before it was reassignment
# now compare