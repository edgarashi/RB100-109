#write a method that takes an Array as an argument,
#and returns two arrays (as a pair of nested arrays)
#that contain the first half and the second half
#of the og array, respectively
#if og array contains an odd number of elements
#the middle element should be placed in first half
#of array

# Examples:
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

def halvsies (array)
  mid_point = array.size/2
  new_array = []
  new_array << array.pop(mid_point)
  new_array.prepend(array)
end




p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]