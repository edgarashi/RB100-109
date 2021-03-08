###Merge Sorted Lists###

##Problem##
# write a method that takes two sorted ARRAYS as arguments
# and returns a NEW ARRAY that contains all elements from
# both arguments in sorted orger

# may not provide any solution that requires you to sort the
# result array

# **must build the result array one element at a time
# in proper order***

# **solution should not mutate input arrays**

##Data structure##
# input: two arrays
# output: one NEW ARRAY


def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]