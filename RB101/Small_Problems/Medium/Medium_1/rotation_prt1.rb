###ROTATION_PRT1###

##Problem##
# write a method that rotates an ARRAY by moving the
# FIRST ELEMENT to the end of the ARRAY
# og array SHOULD NOT be modified

#   **DO NOT USE METHOD ARRAY#ROTATE or
#   ARRAY#ROUTE! FOR IMPLEMENTATION**

##Pseudocode//Algo##
# Define a method called 'rotate_array'
#   that accepts array as argument
# create empty array called 'rotated'
# create a variable 'first' equal to arr.first

# arr.each do |element|
#   rotated << element unless element == first
# end
# rotated.shift(first)
# return rotated

def rotate_array(arr)
  rotated = []
  first = arr.first

  arr.each do |element|
    rotated << element unless element == first
  end
  rotated.push(first)
  arr
  p rotated
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true