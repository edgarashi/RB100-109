# You have to create a method that takes a positive integer
# number and returns the next bigger number formed by
# the same digits:

##Problem##
# Given a positive integer number
# Return the next BIGGER number that is formed by
# same digits of first positive integer number(argument)
#   **if no bigger number return -1**

# Examples:
# 12 ==> 21
# 513 ==> 531
# 2017 ==> 2071
# If no bigger number can be composed using those digits return -1:

# 9 ==> -1
# 111 ==> -1
# 531 ==> -1

##Data Structure##
# input - positive integer number
# output- integer number
#   - bigger integer if one can be formed using same digits
#   - (-1) if no larger integer can be found

##Psuedocode/Algo##
# Define samedigits method
# Divide integer into an array of strings, in order to seperate digits for validation
#   call this array_of_digits
# Now need a way to iterate up until integer with same digits appears
#   -.upto? But upto what, exactly? Need a parameter for it to be going upto
#   -this could almost act as the break condition. Only going .upto highest_possible_match
#     -what are the conditions of 'highest_possible_match'?
#       -could do some way for ex. 12 cant match anything that has three digits
#       - same for 513, cant match with anything that has four digits, etc
#     -could be integer * 10
# Now how to compare each iterated integer to array_of_digits
#   for each value of the .upto method
#   iterating_array = .to_s.chars
#   now we run into a problem of validation, how do I test to see if array_of_digits has same digits as integer
#   == does not work, .all? maybe?
#     - not going to work because just single digits in array
#     - .sort both arrays and compare those!

def samedigits(integer)
  array_of_digits = integer.to_s.chars
  highest_possible_match = (integer * 100)

  (integer + 1).upto(highest_possible_match) do |big_number|
    iterating_array = big_number.to_s.chars
    if array_of_digits.sort == iterating_array.sort
      return iterating_array.join.to_i
    end
  end
  -1
end




p samedigits(12) == 21
p samedigits(513) == 531
p samedigits(2017) == 2071
p samedigits(9) == -1
p samedigits(111) == -1
p samedigits(531) == -1
