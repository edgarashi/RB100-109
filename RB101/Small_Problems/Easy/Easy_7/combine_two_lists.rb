#write a method that combines two arrays passed in as
#arguments and returns a new array that contains all
#elements from both array arguments, with the elements
#taken in alternation

#may assume that both input arrays are non-empty
#and that they have same number of elements

# Example:
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def interleave(arr1, arr2)
  dummy_array = []
  total_count= (arr1.length + arr2.length)

  loop do
    dummy_array.push(arr1.shift)
    dummy_array.push(arr2.shift)
    break if dummy_array.length == total_count
  end
  return dummy_array
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']