#write a method that takes two arrays as arguments
#returns an array that contains all values from argument
#arrays
#should be no duplication of values in the returned Array
#even if there are duplicates in OG array

def merge(array1, array2)
  new_array=[]
  new_array<<array1.uniq
  new_array<<array2.uniq
  new_array.flatten!.uniq!
  new_array
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
