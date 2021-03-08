###ROTATION_PRT3###

##Problem##
# write a method that takes an INTEGER as argument and
# returns the MAXIMUM ROTATION of that argument

#   **CAN USE ROTATE_RIGHTMOST_DIGITS METHOD**
#   **DO NOT HAVE TO HANDLE MULTIPLE 0S**


##Pseudocode//Algo##
# Define a method called max_rotation that takes
# integer as an argument
#   create an array called 'number-digits'
#     make array equal to integer.to_s.chars
# use .downto method on number_digits to 2
#   make variable number equal to 'rotate_rightmost_digits(number, n)'
# return number

def rotate_array(arr)
  rotated = []
  first = arr.first

  arr.each do |element|
    rotated << element unless element == first
  end
  rotated.push(first)
  arr
  rotated
end

def rotate_rightmost_digits(intg, rotate_count)
  string_intg = intg.to_s.chars
  last = string_intg.length
  rotater =  string_intg[-rotate_count..last]
  string_intg.slice!(-rotate_count..last)
  rotated_digits = rotate_array(rotater)
  string_intg.push(rotated_digits).flatten
  string_intg.join.to_i
end

def max_rotation(integer)
  number_digits = integer.to_s.size
  number_digits.downto(2) do |n|
    integer = rotate_rightmost_digits(integer, n)
  end
  integer
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845