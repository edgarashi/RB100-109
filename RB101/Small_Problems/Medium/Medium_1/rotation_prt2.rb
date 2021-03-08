###ROTATION_PRT2###

##Problem##
# write a method that can rotate the last n digits of a
# number.

#   note that rotating just 1 digit results in og number
#   being returned

#   ***MAY USE ROTATE_ARRAY METHOD FROM PREVIOUS EXERCISE**

#   **MAY ASSUME THAT N IS ALWAYS A POSITIVE INTEGER**

##Pseudocode//Algo##
# Define a method called 'rotate_rightmost_digits'
#   pass in integer, and rotate_count
# Assume intg needs to be put into array for
#   'rotate_array' method to work
# The 'rotate_count' will decide how many elements in array
# will be rotated (how many elements to isolate)

# Create array called string_intg equal to intg.to_s.chars
# create a variable called 'last' that is string_intg.length - 1
# create rotater array equal to string_intg[-rotate_count..last]

# use rotate_array method on rotater array



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



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917