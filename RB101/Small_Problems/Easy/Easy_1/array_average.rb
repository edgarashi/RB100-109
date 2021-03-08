#write a method that takes one argument, an array containing
#integers and returns the average of all numbers in the array
#the array will never be empty and the numbers will always
#be positive integers. your result should be an integer

###PSEUDOCODE/ALGO###
# Get length of array and save that as value 'length'
# .sum method adds each element in array, save this as sum value
# sum/length = result
#return result





def average(numbers)
  length = numbers.length
  sum = numbers.sum
  result = sum/length
  result
end





# examples:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
